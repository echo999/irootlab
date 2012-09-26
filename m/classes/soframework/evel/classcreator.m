function classcreator(x)
if nargin < 1; x = 0; end

if x
  o = goer();
  o = goer_1i();
  o = goer_clarchsel__ann();
  o = goer_clarchsel__dist();
  o = goer_clarchsel__frbm_kg1();
  o = goer_clarchsel__frbm_ori();
  o = goer_clarchsel__knn();
  o = goer_clarchsel__lasso();
  o = goer_clarchsel__ldc();
  o = goer_clarchsel__ls();
  o = goer_clarchsel__lsth();
  o = goer_clarchsel__qdc();
  o = goer_clarchsel__svm();
  o = goer_fearchsel__bypass__ann();
  o = goer_fearchsel__bypass__dist();
  o = goer_fearchsel__bypass__frbm_kg1();
  o = goer_fearchsel__bypass__knn();
  o = goer_fearchsel__bypass__ldc();
  o = goer_fearchsel__bypass__qdc();
  o = goer_fearchsel__bypass__svm();
  o = goer_fearchsel__ffs__ann();
  o = goer_fearchsel__ffs__dist();
  o = goer_fearchsel__ffs__frbm_kg1();
  o = goer_fearchsel__ffs__knn();
  o = goer_fearchsel__ffs__ldc();
  o = goer_fearchsel__ffs__qdc();
  o = goer_fearchsel__ffs__svm();
  o = goer_fearchsel__fisher__ann();
  o = goer_fearchsel__fisher__dist();
  o = goer_fearchsel__fisher__frbm_kg1();
  o = goer_fearchsel__fisher__knn();
  o = goer_fearchsel__fisher__ldc();
  o = goer_fearchsel__fisher__qdc();
  o = goer_fearchsel__fisher__svm();
  o = goer_fearchsel__lasso__ann();
  o = goer_fearchsel__lasso__dist();
  o = goer_fearchsel__lasso__frbm_kg1();
  o = goer_fearchsel__lasso__knn();
  o = goer_fearchsel__lasso__ldc();
  o = goer_fearchsel__lasso__qdc();
  o = goer_fearchsel__lasso__svm();
  o = goer_fearchsel__manova__ann();
  o = goer_fearchsel__manova__dist();
  o = goer_fearchsel__manova__frbm_kg1();
  o = goer_fearchsel__manova__knn();
  o = goer_fearchsel__manova__ldc();
  o = goer_fearchsel__manova__qdc();
  o = goer_fearchsel__manova__svm();
  o = goer_fearchsel__pca__ann();
  o = goer_fearchsel__pca__dist();
  o = goer_fearchsel__pca__frbm_kg1();
  o = goer_fearchsel__pca__knn();
  o = goer_fearchsel__pca__ldc();
  o = goer_fearchsel__pca__qdc();
  o = goer_fearchsel__pca__svm();
  o = goer_fearchsel__pls__ann();
  o = goer_fearchsel__pls__dist();
  o = goer_fearchsel__pls__frbm_kg1();
  o = goer_fearchsel__pls__knn();
  o = goer_fearchsel__pls__lasso();
  o = goer_fearchsel__pls__ldc();
  o = goer_fearchsel__pls__qdc();
  o = goer_fearchsel__pls__svm();
  o = goer_fearchsel__spline__ann();
  o = goer_fearchsel__spline__dist();
  o = goer_fearchsel__spline__frbm_kg1();
  o = goer_fearchsel__spline__knn();
  o = goer_fearchsel__spline__ldc();
  o = goer_fearchsel__spline__qdc();
  o = goer_fearchsel__spline__svm();
  o = goer_fhg_ffs();
  o = goer_fhg_fisher();
  o = goer_fhg_lasso();
  o = goer_fhg_lda();
  o = goer_fhg_manova();
  o = goer_fhg_pcalda10();
  o = goer_fhg_pcalda20();
  o = goer_foldmerger_ffs();
  o = goer_foldmerger_fhg();
  o = goer_foldmerger_fitest_np();
  o = goer_foldmerger_fitest_np_grag();
  o = goer_foldmerger_fitest_pa();
  o = goer_foldmerger_fitest_pa_grag();
  o = goer_lcr2__ann();
  o = goer_lcr2__dist();
  o = goer_lcr2__frbm_kg1();
  o = goer_lcr2__knn();
  o = goer_lcr2__lasso();
  o = goer_lcr2__ldc();
  o = goer_lcr2__qdc();
  o = goer_lcr2__svm();
  o = goer_merger_fhg();
  o = goer_merger_fitest();
  o = goer_merger_merger_fhg();
  o = goer_merger_merger_fitest();
  o = goer_ni();
  o = goer_undersel____lasso();
  o = goer_undersel__bypass__ann();
  o = goer_undersel__bypass__dist();
  o = goer_undersel__bypass__frbm_kg1();
  o = goer_undersel__bypass__knn();
  o = goer_undersel__bypass__ldc();
  o = goer_undersel__bypass__qdc();
  o = goer_undersel__bypass__svm();
  o = goer_undersel__ffs__dist();
  o = goer_undersel__ffs__frbm_kg1();
  o = goer_undersel__ffs__knn();
  o = goer_undersel__ffs__ldc();
  o = goer_undersel__ffs__qdc();
  o = goer_undersel__ffs__svm();
  o = goer_undersel__fisher__ann();
  o = goer_undersel__fisher__dist();
  o = goer_undersel__fisher__frbm_kg1();
  o = goer_undersel__fisher__knn();
  o = goer_undersel__fisher__ldc();
  o = goer_undersel__fisher__qdc();
  o = goer_undersel__fisher__svm();
  o = goer_undersel__lasso__ann();
  o = goer_undersel__lasso__dist();
  o = goer_undersel__lasso__frbm_kg1();
  o = goer_undersel__lasso__knn();
  o = goer_undersel__lasso__ldc();
  o = goer_undersel__lasso__qdc();
  o = goer_undersel__lasso__svm();
  o = goer_undersel__manova__ann();
  o = goer_undersel__manova__dist();
  o = goer_undersel__manova__frbm_kg1();
  o = goer_undersel__manova__knn();
  o = goer_undersel__manova__ldc();
  o = goer_undersel__manova__qdc();
  o = goer_undersel__manova__svm();
  o = goer_undersel__pca__ann();
  o = goer_undersel__pca__dist();
  o = goer_undersel__pca__frbm_kg1();
  o = goer_undersel__pca__knn();
  o = goer_undersel__pca__ldc();
  o = goer_undersel__pca__qdc();
  o = goer_undersel__pca__svm();
  o = goer_undersel__pls__ann();
  o = goer_undersel__pls__dist();
  o = goer_undersel__pls__frbm_kg1();
  o = goer_undersel__pls__knn();
  o = goer_undersel__pls__ldc();
  o = goer_undersel__pls__qdc();
  o = goer_undersel__pls__svm();
  o = goer_undersel__spline__ann();
  o = goer_undersel__spline__dist();
  o = goer_undersel__spline__frbm_kg1();
  o = goer_undersel__spline__knn();
  o = goer_undersel__spline__ldc();
  o = goer_undersel__spline__qdc();
  o = goer_undersel__spline__svm();
  o = clarchsel();
  o = clarchsel_ann();
  o = clarchsel_dist();
  o = clarchsel_frbm();
  o = clarchsel_frbm_kg1();
  o = clarchsel_frbm_ori();
  o = clarchsel_knn();
  o = clarchsel_lasso();
  o = clarchsel_ldc();
  o = clarchsel_ls();
  o = clarchsel_lsth();
  o = clarchsel_noarch();
  o = clarchsel_qdc();
  o = clarchsel_svm();
  o = diacomp();
  o = diacomp_peaklocationsfe();
  o = fearchsel();
  o = fearchsel_bypass();
  o = fearchsel_factors();
  o = fearchsel_ffs();
  o = fearchsel_fhana();
  o = fearchsel_fisher();
  o = fearchsel_fs_base();
  o = fearchsel_lasso();
  o = fearchsel_manova();
  o = fearchsel_pca();
  o = fearchsel_pls();
  o = fearchsel_spline();
  o = fhg();
  o = fhg_ffs();
  o = fhg_fisher();
  o = fhg_lasso();
  o = fhg_lda();
  o = fhg_manova();
  o = fhg_pcalda();
  o = foldmerger_ffs();
  o = foldmerger_fhg();
  o = foldmerger_fitest();
  o = foldmerger_fitest_np();
  o = foldmerger_fitest_np_grag();
  o = foldmerger_fitest_pa();
  o = merger_fhg();
  o = merger_fitest();
  o = merger_merger_fhg();
  o = merger_merger_fitest();
  o = sodesigner();
  o = undersel();
  o = undersel_ann();
  o = undersel_dist();
  o = undersel_frbm_kg1();
  o = undersel_knn();
  o = undersel_lasso();
  o = undersel_ldc();
  o = undersel_ls();
  o = undersel_qdc();
  o = undersel_svm();
  o = underselmerger();
  o = frbm();
  o = frbm_delete_rule();
  o = frbm_firing_correlation();
  o = frbm_firing_cosine();
  o = frbm_firing_distmean();
  o = frbm_firing_exp_default();
  o = frbm_firing_exp_mahalanobis();
  o = frbm_firing_pr();
  o = frbm_mf_gauss();
  o = frbm_save_movie();
  o = frbm_train_subclust();
  o = frbm_update_rules2();
  o = frbm_update_rules_kg1();
  o = frbm_update_rules_kg2();
  o = frbm_update_rules_kg3();
  o = frbm_update_rules_original();
  o = frbm_update_rules_smalltweak();
  o = irootlab();
end
