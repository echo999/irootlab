%> @brief Base class
%>
%> <h2>Inheriting the "irobj" class
%>
%> @arg Check for descendants, as there may be a more suitable class to be inherited
%> @arg Create a GUI to edit properties from @ref objtool or @ref datatool. This step is optional, but make sure you set @ref flag_ui or @ref flag_params to 0 at the constructor
%> 
%> @warning From my own experience, it is common to start by duplicating an existing class file, but forget to rename the constructor
%> The constructor of the new class must have the same name as the class itself. 
%> 
%> <h3>Properties to set in the constructor of new object class</h3>
%> 
%> The following properties within @ref irobj define how the GUI will handle the class
%> @arg irobj::classtitle
%> @arg irobj::flag_params
%> @arg irobj::flag_ui
%> @arg irobj::moreactions
%> @arg irobj::color
%> 
%> <h3>Creating a properties Dialog Box</h3>
%> Properties GUI names follow the following pattern: <code>uip_<corresponding class name>.m</code>, and
%> <code>uip_<corresponding class name>.fig</code>. The latter is the FIG created using GUIDE.
%> 
%> @arg set <code>flag_ui=1</code> and <code>flag_params=1</code> at the constructor
%> @arg Open an existing properties GUI in GUIDE, e.g <code>guide uip_fcon_pca</code>, and save it with the appropriate name.
%> @arg Make the necessary changes to the GUI and its source code.
%>
%> <h3>Update the class map</h3>
%> @code
%> classmap_compile
%> @endcode
%> 
classdef irobj

    properties
        title = [];
        %> =[0, .8, 0]. multipurpose feature, routines may use it for different things. Major use is to change the background of objtool and
        %> blockmenu. See also @ref classes_html.m
        color = [0, .8, 0];
    end;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%% Considering reconfiguring these properties when inheriting from irobj or one or its descendants
    properties (SetAccess=protected)
        %> Class Title. Should have a descriptive name, as short as possible.
        classtitle = 'Base Object';
        %> =1. (GUI setting) Whether to call a GUI when the block is selected in @ref blockmenu.m . If true, a routine
        %> called "uip_"&lt;class name&gt; will be called.
        flag_params = 1;
        %> (GUI setting) Whether to "publish" in @ref blockmenu and @ref datatool. Note that a class can be "published" without a GUI (set flag_params=0 in this case, at the class constructor).
        flag_ui = 1;
        %> (GUI setting) String cell containing names of methods that may be called from the GUIs
        moreactions = {};
    end;


    methods (Access=protected)
        %> Default report
        function s = do_get_report(o)
            s = get_matlab_output(o);
        end;

        %> Abstract. HTML inner body
        function s = do_get_html(o)
            s = ['<h1 style=''background-color: #', color2hex(o.color), '''>', o.classtitle, '</h1>', 10, '<pre>', o.get_report(), '</pre>', 10];
        end;
    end;    
    
    methods
        %>@brief Sets several properties of an object at once
        %>@param o
        %>@param params Cell followint the pattern @verbatim {'property1', value1, 'property2', value2, ...} @endverbatim
        function o = setbatch(o, params)
            for i = 1:length(params)/2
                varname = params{i*2-1};
                value = params{i*2};
                o.(varname) = value;
            end;
        end;
        
        
        %> Object reports are plain text. HTML would be cool but c'mon, we don't need that sophistication
        function s = get_report(o)
            s = o.do_get_report();
        end;
        
        %> @param flag_stylesheet=1 Whether to include the stylesheet in the HTML
        function s = get_html(o, flag_stylesheet)
            
            if nargin < 2 || isempty(flag_stylesheet)
                flag_stylesheet = 0;
            end;
            if flag_stylesheet
                s = stylesheet();
            else
                s = '';
            end;
            
            s = cat(2, s, '<h1>', o.get_description(), '</h1>', o.do_get_html());
%            s = [s, '</body></html>', 10];
        end;

        function result = get_params(o, data)
            if o.flag_params
                func = eval(['@(o, data) uip_' class(o) '(o, data);']); %> Builds function pointer based on the block class
                result = func(o, data);
            else
                result.flag_ok = 1;
                result.params = {};
            end;
        end;

        %> @param o
        %> @return [o, log]
        function [o, log] = extract_log(o)
            if isempty(o.log)
                irerror('Cannot extract log, log is empty!');
            end;
            log = o.log;
            o.log = [];
        end;
        
        %> Default behaviour: returns class of object plus object's title
        function s = get_description(o)
            s = '';
            a = {o.title, o.classtitle, class(o)};
            qtd = 0;
            for i = 1:numel(a)
                if ~isempty(a{i})
                    s = [s, iif(qtd > 0, ' ~ ', ''), a{i}];
                    qtd = qtd+1;
                end;
            end;
            if ~isempty(s)
                s = ['[', s, ']'];
                s = replace_underscores(s);
            end;
        end;

        %> @param o
        %> @param flag_title=1
        function s = get_ancestry(o, flag_title)
            if nargin == 1
                flag_title = 1;
            end;
            ss = superclasses(o);
            s = '';
            for i = numel(ss):-1:1
                if flag_title
                    o2 = eval(ss{i});
                    stemp = o2.classtitle;
                else
                    stemp = ss{i};
                end;
                s = [s, stemp, '/'];
            end;
            
            if flag_title
                stemp = o.classtitle;
            else
                stemp = class(o);
            end;
            s = [s, stemp];
        end;      
    end;
end