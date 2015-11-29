<?php

/**
* @Project NUKEVIET 4.x
* @Author VINADES.,JSC (contact@vinades.vn)
* @Copyright (C) 2015 VINADES.,JSC. All rights reserved
* @Language Français
* @License CC BY-SA (http://creativecommons.org/licenses/by-sa/4.0/)
* @Createdate Jun 21, 2010, 12:30:00 PM
*/

if( ! defined( 'NV_ADMIN' ) or ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

$lang_translator['author'] = 'Phạm Chí Quang';
$lang_translator['createdate'] = '21/6/2010, 19:30';
$lang_translator['copyright'] = '@Copyright (C) 2010 VINADES.,JSC. Tous droits réservés.';
$lang_translator['info'] = 'Langue française pour NukeViet 4';
$lang_translator['langtype'] = 'lang_module';

$lang_module['categories'] = 'Gestion du rubrique';
$lang_module['topics'] = 'Sujets';
$lang_module['topics_error_title'] = 'Erreur: Vous ne saisissez pas le titre de l\'événement';
$lang_module['sources'] = 'Source';
$lang_module['save'] = 'Sauver';
$lang_module['action'] = 'Effectuer';
$lang_module['move'] = 'Déplacer';
$lang_module['save_temp'] = 'Sauvegarde temporairement';
$lang_module['save_send_admin'] = 'Sauvegarder l\'article, passer à la rédacteur';
$lang_module['save_send_spadmin'] = 'Sauvegarder l\'article, passer à la rédacteur en chef';
$lang_module['publtime'] = 'Publier';
$lang_module['exptime'] = 'Expirer l\'article';
$lang_module['status_action_0'] = 'Passer à l\'attente d\'examiner';
$lang_module['declined'] = 'Refuse l\'article';
$lang_module['re_published'] = 'Publier l\'article';
$lang_module['status'] = 'Etat';
$lang_module['status_0'] = 'Désactivé';
$lang_module['status_1'] = 'Publié';
$lang_module['status_2'] = 'Horaire';
$lang_module['status_3'] = 'Expiré';
$lang_module['status_4'] = 'Sauvegarder temporairement';
$lang_module['status_5'] = 'Passer à l\'examination';
$lang_module['status_6'] = 'Refuser d\'examiner cet article';
$lang_module['status_7'] = 'En cours d\'examiner d\'article';
$lang_module['status_8'] = 'Passer à la mise en ligne de l\'article';
$lang_module['status_9'] = 'Refuse de mettre en ligne de l\'article';
$lang_module['status_10'] = 'En cours d\'examiner avant de mettre en ligne';
$lang_module['errorsave'] = 'Erreur: il est impossible de mettre à jour, vérifiez si le titre ou l\'alias a été utilisé';
$lang_module['saveok'] = 'Mise à jour réussie';
$lang_module['clickgotomodule'] = 'Cliquez ici pour aller à la gestion des articles';
$lang_module['alias'] = 'Alias';
$lang_module['name'] = 'Titre';
$lang_module['titlesite'] = 'Modification Le titre du site';
$lang_module['error_name'] = 'Erreur: Manque de titre';
$lang_module['weight'] = 'Position';
$lang_module['numsubcat'] = 'Nombre de sous-catégories';
$lang_module['inhome'] = 'Afficher à l\'Accueil';
$lang_module['numlinks'] = 'Nombre de liens';
$lang_module['numcomments'] = 'Nombre de commentaire';
$lang_module['newday'] = 'Icone des nouvelles (par jour)';
$lang_module['hitstotal'] = 'Nombre de regard';
$lang_module['checkall'] = 'Sélectionner tout';
$lang_module['uncheckall'] = 'Désélectionner tout';
$lang_module['description'] = 'Description';
$lang_module['viewdescription'] = 'Faire apparaître le contenu en détail en regardant l\'article';
$lang_module['viewdescription_0'] = 'Cacher';
$lang_module['viewdescription_1'] = 'Apparaître dans la première page du sujet';
$lang_module['viewdescription_2'] = 'Apparaître dans toutes les pages du sujets';
$lang_module['keywords'] = 'Mots clés';
$lang_module['content_list'] = 'Liste des articles';
$lang_module['content_add'] = 'Ajout d\'un article';
$lang_module['add_cat'] = 'Ajouter une catégorie';
$lang_module['add_topic'] = 'Ajouter un sujet';
$lang_module['add_sources'] = 'Ajouter une source';
$lang_module['edit_cat'] = 'Éditer la catégorie';
$lang_module['edit_topic'] = 'Éditer le sujet';
$lang_module['edit_sources'] = 'Éditer la source';
$lang_module['add_block_cat'] = 'Ajouter un groupe de blocks';
$lang_module['edit_block_cat'] = 'Éditer le groupe de blocks';
$lang_module['link'] = 'Lien de la source';
$lang_module['cat_sub'] = 'Catégorie';
$lang_module['cat_sub_sl'] = 'Catégorie principale';
$lang_module['note_cat'] = 'Vous devez créer les rubriques avant';
$lang_module['topic_sl'] = 'Sélectionnez ou tapez le sujet';
$lang_module['delcat_msg_cat'] = 'Cette catégorie a  %s sous-catégories, il faut les supprimer ou les déplacer tout d\'abord';
$lang_module['delcat_msg_rows'] = 'Cette catégorie a %s articles, êtes-vous sûr de vouloir les supprimer ou déplacer vers une autre catégorie';
$lang_module['delcat_msg_rows_select'] = 'Note: Rubrique %s a %s articles.<br />Supprimer Ce Rubrique va supprimer tous les articles à l\'intérieur';
$lang_module['delcat_msg_rows_move'] = 'Ou sélectionnez une catégorie pour les déplacer';
$lang_module['delcat_msg_cat_permissions'] = 'Vous n’êtes pas autorisé à faire cette action';
$lang_module['delcatandrows'] = 'Supprimer la catégorie et les articles';
$lang_module['delcat_msg_rows_noselect'] = 'Sélectionnez une catégorie pour déplacer les articles';
$lang_module['deltopic_msg_rows'] = 'Ce sujet a %s articles, êtes-vous sûr de vouloir le supprimer?.';
$lang_module['setting'] = 'Configuration du module';
$lang_module['setting_indexfile'] = 'Affichage à l\'Accueil';
$lang_module['setting_homesite'] = 'Tailles de photo à l\'Accueil';
$lang_module['setting_thumbblock'] = 'Tailles de photos dans les blocks';
$lang_module['setting_imagefull'] = 'Tailles de photo sous l\'introduction de l\'article';
$lang_module['setting_per_page'] = 'Nombre d\'articles affichés sur une page';
$lang_module['setting_st_links'] = 'Nombre de liens affichés';
$lang_module['setting_idf_df'] = 'Défaut';
$lang_module['setting_copyright'] = 'Texte de droit d\'auteur';
$lang_module['setting_view'] = 'Configuration de l\'apparition';
$lang_module['setting_post'] = 'Configuration de la mise en ligne des articles';
$lang_module['setting_auto_tags'] = 'Créer les mots clés automatiquement pour un article si vous ne donnez pas les mots clés au moment de mettre en ligne les articles';
$lang_module['setting_tags_remind'] = 'Rappeler les mots clés qui n\'ont pas de description';
$lang_module['setting_alias_lower'] = 'Mettre les alias en minuscule quand on les crée à nouveau';
$lang_module['viewcat_page'] = 'Méthode d\'affichage';
$lang_module['viewcat_page_new'] = 'liste, nouveau en haut';
$lang_module['viewcat_page_old'] = 'liste, ancien en haut';
$lang_module['viewcat_main_left'] = 'par catégorie, autres articles à gauche';
$lang_module['viewcat_main_right'] = 'par catégorie, autres articles à droite';
$lang_module['viewcat_main_bottom'] = 'par catégorie, autres articles en bas';
$lang_module['viewcat_two_column'] = 'par catégorie en 2 colonnes';
$lang_module['viewcat_list_new'] = 'par titre, le plus récent en haut';
$lang_module['viewcat_list_old'] = 'par titre, ancien en haut';
$lang_module['viewcat_grid_new'] = 'par grille, nouveau en haut';
$lang_module['viewcat_grid_old'] = 'par grille, ancien en haut';
$lang_module['viewcat_none'] = 'cacher';
$lang_module['viewcat_detail'] = 'Les groupes peuvent regarder les articles en détails';
$lang_module['search'] = 'Rechercher';
$lang_module['search_type'] = 'Recherche par';
$lang_module['search_status'] = 'État';
$lang_module['search_id'] = 'ID';
$lang_module['search_key'] = 'Mot clé';
$lang_module['search_cat'] = 'Catégorie';
$lang_module['search_cat_all'] = 'Toutes les catégories';
$lang_module['search_title'] = 'Titre';
$lang_module['search_bodytext'] = 'Contenu';
$lang_module['search_author'] = 'Auteur';
$lang_module['search_admin'] = 'Déposé par';
$lang_module['search_per_page'] = 'Nombre d\'articles affichés';
$lang_module['search_note'] = 'Mot clé doit être plus de 2 et moins de 64 caractères, code html interdit';
$lang_module['content_edit'] = 'Éditer';
$lang_module['error_title'] = 'Erreur: Manque de titre';
$lang_module['error_bodytext'] = 'Erreur: Manque de contenu';
$lang_module['error_cat'] = 'Erreur: Il faut sélectionner la catégorie';
$lang_module['sources_sl'] = 'Sélectionnez ou tapez';
$lang_module['content_cat'] = 'Catégorie';
$lang_module['content_block'] = 'Articles liés aux blocks';
$lang_module['content_topic'] = 'Sujet';
$lang_module['content_homeimg'] = 'Image';
$lang_module['content_homeimgalt'] = 'Anoter l\'image';
$lang_module['content_hometext'] = 'Introduction';
$lang_module['content_notehome'] = '(Apparaitre avec tous les objets même quand il n\'ont pas de droit)';
$lang_module['content_tag'] = 'Les tags pour l\'article';
$lang_module['content_tag_note'] = 'Pour le créer automatiquement, copiez le contenu entier de l\'article dans l\'espace en dessous et cliquez';
$lang_module['content_clickhere'] = 'ici';
$lang_module['content_showmore'] = '(extendre)';
$lang_module['content_notetime'] = '(Date/mois/année heure:minute)';
$lang_module['content_publ_date'] = 'Horaire de publication';
$lang_module['content_exp_date'] = 'Date d\'expiration';
$lang_module['content_extra'] = 'Fonction d\'extension';
$lang_module['content_inhome'] = 'Afficher à l\'Accueil';
$lang_module['content_allowed_comm'] = 'Autoriser les commentaires';
$lang_module['content_note_comm'] = 'Fonctionnement Permission de discussion est actuellement géré  sous module Gestion des commentaires';
$lang_module['content_allowed_rating'] = 'Autoriser l\'évaluation';
$lang_module['allowed_rating_point'] = 'Faire apparaitre l\'article sur google si l\'article a le score de';
$lang_module['no_allowed_rating'] = 'Cacher';
$lang_module['content_allowed_send'] = 'Autoriser l\'envoi aux copains';
$lang_module['content_allowed_print'] = 'Autoriser l\'impression';
$lang_module['content_allowed_save'] = 'Autoriser l\'entregistrement';
$lang_module['content_allshow'] = 'Afficher tout';
$lang_module['content_allcollapse'] = 'Masquer tout';
$lang_module['content_bodytext'] = 'Contenu détaillé';
$lang_module['content_bodytext_note'] = '(Afficher uniquement aux personnes autorisées)';
$lang_module['content_admin'] = 'Créateur';
$lang_module['content_author'] = 'Auteur';
$lang_module['content_sourceid'] = 'Source';
$lang_module['content_copyright'] = 'Garder le droit d\'auteur';
$lang_module['content_saveok'] = 'Enregistrement de données avec succès';
$lang_module['content_main'] = 'Retour à la gestion';
$lang_module['content_back'] = 'Retour à l\'administration';
$lang_module['redircet_title'] = 'Action réussie';
$lang_module['content_checkcat'] = 'Catégorie de l\'article';
$lang_module['content_checkcatmsg'] = 'Veuillez choisir la catégorie pour l\'article';
$lang_module['content_archive'] = 'Archiver à l\'expiration';
$lang_module['content_tags_empty'] = 'Note:L\'article n\'a aucun mot clé';
$lang_module['content_tags_empty_auto'] = 'Système va créer les mots clés au moment où vous sauvegardez cet article, vous pouvez éteindre le fonctionnement de créer les mots clés dans le rubrique Gestion des modules';
$lang_module['showtooltip'] = 'Afficher tooltips';
$lang_module['showtooltip_position'] = 'Position de l\'affichage';
$lang_module['showtooltip_position_top'] = 'Au dessus';
$lang_module['showtooltip_position_bottom'] = 'Au dessous';
$lang_module['showtooltip_position_left'] = 'A gauche';
$lang_module['showtooltip_position_right'] = 'A droite';
$lang_module['showtooltip_length'] = 'Numero';
$lang_module['showhometext'] = 'Afficher l\'introduction lors de la lecture d\'article complet';
$lang_module['show_no_image'] = 'Afficher l\'image No-image si l\'article n\'a pas de l\'image d\'illustration';
$lang_module['imgposition'] = 'Position de l\'image';
$lang_module['imgpositiondefault'] = 'Configuration par défaut, La mise en page des images dans l\'article';
$lang_module['imgposition_0'] = 'Masquer';
$lang_module['imgposition_1'] = 'Selon la configuration';
$lang_module['imgposition_2'] = 'Sous l\'introduction';
$lang_module['addtoblock'] = 'Ajouter au block';
$lang_module['delete_from_block'] = 'Supprimer du block';
$lang_module['error_del_content'] = 'Erreur: impossible de supprimer tous les articles, merci de vérifier';
$lang_module['msgnocheck'] = 'Il faut sélectionner au moins un article';
$lang_module['facebookAppID'] = 'Facebook App ID';
$lang_module['facebookAppIDNote'] = '(En forme 1419186468293063,  <a href="http://wiki.nukeviet.vn/nukeviet:admin:news:facebookapi" target="_blank">Regarder en détails</a>)';
$lang_module['socialbutton'] = 'Afficher les outils comme Facebook, G+, Twitter quand vous regardez les articles';
$lang_module['block'] = 'Les groupes de nouvelles';
$lang_module['adddefaultblock'] = 'Par défaut lors d\'ajout d\'article';
$lang_module['source_logo'] = 'Logo de la source';
$lang_module['topic_page'] = 'Articles du même sujet';
$lang_module['topic_del'] = 'Supprimer du sujet';
$lang_module['topic_nocheck'] = 'Sélectionnez au moins 1 article';
$lang_module['topic_delete_confirm'] = 'Êtes-vous sûr de vouloir supprimer le sujet de l\'article ?';
$lang_module['topic_delete_success'] = 'Supression réussie !';
$lang_module['topic_nonews'] = 'Aucun article dans ce sujet !';
$lang_module['addtotopics'] = 'Ajout au sujet';
$lang_module['topic_update_success'] = 'Mise à jour réussie !';
$lang_module['topic_num_news'] = 'articles';
$lang_module['siteinfo_publtime'] = 'Total des articles actifs';
$lang_module['siteinfo_users_send'] = 'Articles envoyés par les utilisateurs';
$lang_module['siteinfo_pending'] = 'Articles suspens';
$lang_module['siteinfo_expired'] = 'Articles expirés';
$lang_module['siteinfo_exptime'] = 'Articles à peine expirés';
$lang_module['siteinfo_comment'] = 'Commentaires publiés';
$lang_module['siteinfo_comment_pending'] = 'Commentaires suspens';
$lang_module['siteinfo_tags_incomplete'] = 'Nombres de tags qui n\'ont pas de description';
$lang_module['group_content'] = 'Configuration de la mise en ligne dans la page de l\'utilisateur';
$lang_module['group_addcontent'] = 'Envoi autorisé';
$lang_module['group_postcontent'] = 'Publier sans censurer';
$lang_module['group_editcontent'] = 'Édition des articles publiés autorisée';
$lang_module['group_delcontent'] = 'Suppression autorisée';
$lang_module['admin'] = 'Décentralisation de la gestion';
$lang_module['admin_permissions'] = 'Pouvoirs';
$lang_module['admin_edit'] = 'Modifier le pouvoir';
$lang_module['admin_edit_user'] = 'Changer les droits d\'utilisateur';
$lang_module['admin_full_module'] = 'Administrateur du module';
$lang_module['admin_module'] = 'Administrateur de module';
$lang_module['admin_module_for_user'] = 'Vous avez tous les pouvoirs du module, hors de la gestion décentralisée';
$lang_module['admin_cat'] = 'Administrateur de Catégorie';
$lang_module['admin_cat_for_user'] = 'Vos pouvoirs aux catégories';
$lang_module['admin_no_user'] = 'Fonctions de décentralisation de ce module ne s\'appliquent qu\'aux administrateurx de modules, vous devez aes jouter d\'abord';
$lang_module['admin_userid'] = 'Identifiant';
$lang_module['admin_username'] = 'Nom d\'utilisateur';
$lang_module['admin_full_name'] = 'Nom complet';
$lang_module['admin_first_name'] = 'Nom';
$lang_module['admin_last_name'] = 'Prénom';
$lang_module['admin_email'] = 'Email';
$lang_module['firstname_lastname'] = 'Nom et Prénom';
$lang_module['lastname_firstname'] = 'Prénom et Nom';
$lang_module['permissions_admin'] = 'Gestion de Catégories';
$lang_module['permissions_add_content'] = 'Créer l\'article';
$lang_module['permissions_pub_content'] = 'Mise en ligne l\'article';
$lang_module['permissions_app_content'] = 'Examiner les articles';
$lang_module['permissions_edit_content'] = 'Éditer les articles';
$lang_module['permissions_del_content'] = 'Supprimer l\'article';
$lang_module['permissions_pub_error'] = 'Erreur: Vous ne pouvez pas poster les articles dans la catégorie: %1$s';
$lang_module['permissions_sendspadmin_error'] = 'Erreur: Vous n\'avez pas de droit d\'envoyer l\'article au rédacteur en chef dans le rubrique: %1$s';
$lang_module['permissions_pub_show_error'] = 'Erreur: Vous ne pouvez pas afficher les articles dans le Rubrique : %1$s';
$lang_module['error_no_del_content_id'] = 'Erreur: impossible de supprimer l\'article ayant ID:';
$lang_module['structure_image_upload'] = 'Les images envoyées du module est stockés selon la structure de dossier';
$lang_module['config_source'] = 'Méthode d\'afficher la source de l’article';
$lang_module['config_source_title'] = 'Afficher le titre de la source';
$lang_module['config_source_link'] = 'Afficher le lien de la source';
$lang_module['config_source_logo'] = 'Afficher le logo de la source';
$lang_module['tags'] = 'Gestion des tags';
$lang_module['add_tags'] = 'Ajouter les tags';
$lang_module['edit_tags'] = 'Modifier les tags';
$lang_module['tags_alias'] = 'Enlever les signes du vietnamien, les caractères a-z, 0-9, - dans les alias des tags';
$lang_module['alias_search'] = 'Pour afficher les autres tags, vous vous arrêtez le fonctionnement de recherche pour afficher plus de résultats';
$lang_module['tags_all_link'] = 'Le mode d\'affichage des tags qui n\'ont pas de descriptions est activé; cliquer ici pour regarder tous les tags';
$lang_module['tags_no_description'] = 'Pas de description';
$lang_module['googleplus'] = 'Certificat de Google+';
$lang_module['googleplus_1'] = 'N\'utilise pas';
$lang_module['googleplus_0'] = 'Selon le droit d\'auteur du module';
$lang_module['input_title_blocks'] = 'Saisir le titre du bloque de nouvelles';
$lang_module['input_keyword_tags'] = 'Saisir le mot clé';
$lang_module['alias_empty_notice'] = 'Les alias manquants, le système va créer lui même les alias correspondants';
$lang_module['functional'] = 'Fonctionnement';
$lang_module['featured'] = 'Nouvelle spéciale';
$lang_module['addtocat'] = 'Ajouter les articles spéciales dans les rubriques';
$lang_module['delete_from_cat'] = 'Supprimer les articles des rubriques';
$lang_module['not_featured'] = 'Aucun article';