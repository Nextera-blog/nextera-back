-- Insertion des utilisateurs dans auth_user
INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        1,
        'pbkdf2_sha256$1000000$LNmzqRyjiqMWNwFSRBrx4b$fsxdonyk82rv1QQv/TSU2Du1C1nUBpOhINZ5paSDm7I=',
        NULL,
        1,
        'admin',
        'Alexandria',
        'Valentin',
        'admin@admin.com',
        0,
        1,
        '2023-08-02 09:45:41.766535'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        2,
        'kEHcjoy5*1eT',
        NULL,
        0,
        'user2',
        'Bertrand',
        'Barthelemy',
        'user2@example.com',
        0,
        1,
        '2025-01-23 09:45:41.766607'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        3,
        '+@QRjS%p3HQf',
        NULL,
        0,
        'user3',
        'Louis',
        'Hoarau',
        'user3@example.com',
        0,
        1,
        '2025-04-22 09:45:41.766656'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        4,
        'F_krCbzX(tk7',
        NULL,
        0,
        'user4',
        'Valentine',
        'Renaud',
        'user4@example.com',
        0,
        1,
        '2023-04-19 09:45:41.766702'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        5,
        '1d)EtuPh!tV!',
        NULL,
        0,
        'user5',
        'Lucie',
        'Legros',
        'user5@example.com',
        0,
        1,
        '2024-08-09 09:45:41.766737'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        6,
        'HMQ0wmCc9_7L',
        NULL,
        0,
        'user6',
        'Nathalie',
        'Carlier',
        'user6@example.com',
        0,
        1,
        '2024-09-09 09:45:41.766770'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        7,
        '7M0ke^nL&sSG',
        NULL,
        0,
        'user7',
        'Margaret',
        'Riou',
        'user7@example.com',
        0,
        1,
        '2024-10-01 09:45:41.766837'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        8,
        'T@GBRDc*ow6^',
        NULL,
        0,
        'user8',
        'William',
        'Antoine',
        'user8@example.com',
        0,
        1,
        '2024-12-26 09:45:41.766894'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        9,
        '$3)PAhE^(zFS',
        NULL,
        0,
        'user9',
        'Dominique',
        'Guyon',
        'user9@example.com',
        0,
        1,
        '2023-04-24 09:45:41.766932'
    );

INSERT INTO
    auth_user (
        id,
        password,
        last_login,
        is_superuser,
        username,
        first_name,
        last_name,
        email,
        is_staff,
        is_active,
        date_joined
    )
VALUES (
        10,
        'Im(9cXho)*7I',
        NULL,
        0,
        'user10',
        'Yves',
        'Mace',
        'user10@example.com',
        0,
        1,
        '2025-02-02 09:45:41.766967'
    );

-- Insertion des auteurs dans authors
INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        1,
        'Élisabeth Bertrand',
        'Anglais le oh type jardin digne fonction.',
        NULL,
        '2023-06-25 09:45:41.767279'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        2,
        'Martine Rodrigues',
        'Passé circonstance chemise fin réveiller appartenir plaisir forme.',
        NULL,
        '2023-04-20 09:45:41.767327'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        3,
        'Margaux Masse',
        'Abattre vie enfance pauvre usage seigneur court.',
        NULL,
        '2022-11-16 09:45:41.767359'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        4,
        'Aurélie Fouquet',
        'Marier frapper passage départ folie témoin intelligence avance bois entrer souffrance bas.',
        NULL,
        '2023-11-06 09:45:41.767394'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        5,
        'Olivier Paris',
        'Vêtement commencer avec problème herbe pencher dessiner enfoncer angoisse fond eh autant.',
        NULL,
        '2025-02-17 09:45:41.767436'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        6,
        'Chloé Morel',
        'Imaginer chanson horloge liberté valise vaste reposer lentement.',
        NULL,
        '2023-07-12 10:15:22.123456'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        7,
        'Damien Lefèvre',
        'Expliquer monde caresser vérité soudainement lune respect porter.',
        NULL,
        '2022-09-05 14:30:11.654321'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        8,
        'Sophie Dubois',
        'Tourner silence papier feuillage destination éclater tranquille.',
        NULL,
        '2023-12-01 08:00:00.000789'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        9,
        'Hugo Renard',
        'Bousculer souffle présence danse éternel fragile lever.',
        NULL,
        '2024-01-18 11:45:33.112233'
    );

INSERT INTO
    authors (
        user_id,
        name,
        bio,
        profile_picture_url,
        join_date
    )
VALUES (
        10,
        'Camille Perrot',
        'Apparence promesse descendre jardin pensée simple vérité.',
        NULL,
        '2023-05-30 16:20:44.445566'
    );

-- Assignation des rôles aux utilisateurs dans users_roles
INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        1,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Author'
        ),
        1
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        2,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Author'
        ),
        2
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        3,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Author'
        ),
        3
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        4,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Author'
        ),
        4
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        5,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Author'
        ),
        5
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        6,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Visitor'
        ),
        6
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        7,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Visitor'
        ),
        7
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        8,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Visitor'
        ),
        8
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        9,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Visitor'
        ),
        9
    );

INSERT INTO
    users_roles (id, role_id, user_id)
VALUES (
        10,
        (
            SELECT role_id
            FROM roles
            WHERE
                role_name = 'Visitor'
        ),
        10
    );

-- Insertion des articles dans articles
INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        1,
        'Pousser habitude absence pencher.',
        'Creuser rencontrer montrer peuple. Seconde regarder connaître ciel. Blond compagnon politique.',
        '2024-07-19 09:45:41.767908',
        '2024-07-19 09:45:41.767908',
        4
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        2,
        'Simplement tapis pensée seul.',
        'Femme personne rencontre. Peser auquel chiffre. Son veiller autour lueur loi dernier durer.',
        '2025-05-01 09:45:41.767983',
        '2025-05-01 09:45:41.767983',
        1
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        3,
        'Confier arracher joli depuis peau arme chair violent.',
        'Eau étouffer sommeil extraordinaire honneur an. Oui accompagner agir tâche médecin coûter. Personne cruel effort et nombre. État bout service veiller complètement mauvais printemps. Aide jeune devant règle calmer courir.',
        '2025-03-31 09:45:41.768069',
        '2025-03-31 09:45:41.768069',
        2
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        4,
        'Juste preuve étouffer peu rouge.',
        'Tenter fumer étonner maintenant. Envelopper lumière agent eaux marcher traverser. Partie terrible traverser confier but minute. Arme suffire trésor habitant membre genre. Pendre trace seul dominer état réunir quelque maladie. Crainte également tuer français valoir semblable.',
        '2025-01-18 09:45:41.768162',
        '2025-01-18 09:45:41.768162',
        5
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        5,
        'Élever beau beau huit service.',
        'Nombre vert pauvre regarder ton note. Épaule lisser douter mémoire. Voix métier vous huit militaire. Satisfaire gouvernement nerveux autre masse.',
        '2024-07-13 09:45:41.768252',
        '2024-07-13 09:45:41.768252',
        1
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        6,
        'Glace âgé parvenir neuf.',
        'Soi diriger revoir plein vouloir. Renverser problème règle naturellement complet. Usage moyen reprendre fauteuil politique colon séparer. Jeune précieux poitrine roche essayer arrêter. Éternel sommet depuis lors quatre.',
        '2024-08-03 09:45:41.768338',
        '2024-08-03 09:45:41.768338',
        2
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        7,
        'Bête yeux plonger plaisir fil.',
        'Roman mort fort mer somme dépasser. Donc si remettre général mais plein façon. Erreur décider savoir marche secret autre pencher.',
        '2024-05-16 09:45:41.768416',
        '2024-05-16 09:45:41.768416',
        5
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        8,
        'Prêter puis village peur tour qui.',
        'Raconter robe nature. Officier lisser sueur. Déposer tuer embrasser votre dresser vingt.',
        '2024-10-15 09:45:41.768500',
        '2024-10-15 09:45:41.768500',
        2
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        9,
        'Cerveau règle taire fumer semaine personne huit.',
        'Écarter silencieux page ministre maintenant. Poste réduire compagnon marchand. Cent causer madame cher long avis retomber. Gauche étranger demain magnifique rassurer. Cinquante inutile descendre le réponse plaisir.',
        '2024-09-30 09:45:41.768585',
        '2024-09-30 09:45:41.768585',
        5
    );

INSERT INTO
    articles (
        article_id,
        title,
        content,
        creation_date,
        update_date,
        author_id
    )
VALUES (
        10,
        'Vrai violence silencieux social.',
        'Masse grave chasser puis quoi malade seconde. Dégager changer note réfléchir raconter monsieur son. Sens bras article paupière depuis haine.',
        '2024-12-26 09:45:41.768646',
        '2024-12-26 09:45:41.768646',
        1
    );

-- Insertion des commentaires dans comments
INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        1,
        'Reculer accomplir supporter grandir jeter prononcer bonheur essayer santé.',
        '2025-02-25 09:45:41.769034',
        '2025-02-25 09:45:41.769034',
        7,
        NULL,
        6
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        2,
        'Chance occuper dehors mer décrire relation dire.',
        '2024-12-26 09:45:41.769077',
        '2024-12-26 09:45:41.769077',
        3,
        NULL,
        4
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        3,
        'Fatiguer drame ton passage tu etc manquer suite dire.',
        '2025-03-26 09:45:41.769111',
        '2025-03-26 09:45:41.769111',
        2,
        2,
        7
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        4,
        'Certes battre appartement pouvoir mort.',
        '2024-11-22 09:45:41.769141',
        '2024-11-22 09:45:41.769141',
        10,
        3,
        5
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        5,
        'Commencement art nord ouvrir dernier signer prochain midi ancien.',
        '2024-09-24 09:45:41.769174',
        '2024-09-24 09:45:41.769174',
        9,
        NULL,
        2
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        6,
        'Dessiner autre terreur faible sang un dégager dessus.',
        '2025-04-07 09:45:41.769222',
        '2025-04-07 09:45:41.769222',
        9,
        NULL,
        5
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        7,
        'Afin De près trouver mine.',
        '2024-07-26 09:45:41.769249',
        '2024-07-26 09:45:41.769249',
        4,
        6,
        2
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        8,
        'Monter employer beau mourir visite leur détacher.',
        '2025-01-21 09:45:41.769280',
        '2025-01-21 09:45:41.769280',
        5,
        7,
        2
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        9,
        'Tenter centre compagnie rire effacer valoir lever content construire.',
        '2025-03-27 09:45:41.769311',
        '2025-03-27 09:45:41.769311',
        7,
        NULL,
        5
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        10,
        'Circonstance aide ici réussir humide complètement.',
        '2024-11-12 09:45:41.769339',
        '2024-11-12 09:45:41.769339',
        3,
        NULL,
        6
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        11,
        'Nerveux taille trembler battre vide autre trouver émotion que dormir.',
        '2025-01-30 09:45:41.769367',
        '2025-01-30 09:45:41.769367',
        5,
        9,
        2
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        12,
        'Soirée remettre accrocher maison placer plaisir.',
        '2025-01-12 09:45:41.769394',
        '2025-01-12 09:45:41.769394',
        3,
        NULL,
        8
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        13,
        'Apporter père angoisse réussir fleur certes le plus frapper forêt.',
        '2024-12-30 09:45:41.769422',
        '2024-12-30 09:45:41.769422',
        9,
        NULL,
        4
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        14,
        'Sérieux si différent écarter éviter rare devant lire.',
        '2025-04-19 09:45:41.769467',
        '2025-04-19 09:45:41.769467',
        4,
        NULL,
        1
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        15,
        'Train plonger il conscience sauvage.',
        '2024-10-24 09:45:41.769495',
        '2024-10-24 09:45:41.769495',
        5,
        10,
        2
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        16,
        'Précis métier naturel déjà partager arriver dont impossible vert abandonner oncle.',
        '2024-12-07 09:45:41.769523',
        '2024-12-07 09:45:41.769523',
        4,
        NULL,
        8
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        17,
        'Présence diriger poursuivre revoir parti.',
        '2024-09-25 09:45:41.769621',
        '2024-09-25 09:45:41.769621',
        3,
        8,
        5
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        18,
        'Ton même passion instant échapper poursuivre muet.',
        '2024-08-03 09:45:41.769670',
        '2024-08-03 09:45:41.769670',
        9,
        NULL,
        5
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        19,
        'Endormir assez retour ensemble coup nous y comme sommeil.',
        '2024-07-23 09:45:41.769702',
        '2024-07-23 09:45:41.769702',
        7,
        5,
        6
    );

INSERT INTO
    comments (
        comment_id,
        content,
        creation_date,
        update_date,
        article_id,
        parent_comment_id,
        user_id
    )
VALUES (
        20,
        'Front étouffer terminer écrire banc aller douleur.',
        '2024-08-30 09:45:41.769732',
        '2024-08-30 09:45:41.769732',
        8,
        4,
        2
    );

-- Insertion des tags dans tags
INSERT INTO tags (tag_id, name) VALUES (1, 'désert');

INSERT INTO tags (tag_id, name) VALUES (2, 'face');

INSERT INTO tags (tag_id, name) VALUES (3, 'plaindre');

INSERT INTO tags (tag_id, name) VALUES (4, 'effort');

INSERT INTO tags (tag_id, name) VALUES (5, 'dangereux');

INSERT INTO tags (tag_id, name) VALUES (6, 'où');

INSERT INTO tags (tag_id, name) VALUES (7, 'douceur');

INSERT INTO tags (tag_id, name) VALUES (8, 'remonter');

-- Association des tags aux articles dans article_tags
INSERT INTO article_tags (id, article_id, tag_id) VALUES (1, 1, 3);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (2, 2, 7);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (3, 2, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (4, 2, 1);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (5, 3, 7);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (6, 3, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (7, 4, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (8, 4, 8);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (9, 5, 2);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (10, 6, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (11, 6, 7);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (12, 6, 6);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (13, 7, 2);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (14, 7, 3);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (15, 8, 3);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (16, 8, 4);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (17, 9, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (18, 10, 3);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (19, 10, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (20, 10, 1);

-- Insertion des réactions dans article_reactions (unique user_id-article_id)
INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        1,
        '2024-11-30 09:45:41.770733',
        '2024-11-30 09:45:41.770733',
        9,
        1,
        8
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        2,
        '2024-12-28 09:45:41.770760',
        '2024-12-28 09:45:41.770760',
        4,
        9,
        3
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        3,
        '2025-03-11 09:45:41.770774',
        '2025-03-11 09:45:41.770774',
        9,
        2,
        9
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        4,
        '2024-12-13 09:45:41.770785',
        '2024-12-13 09:45:41.770785',
        7,
        5,
        7
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        5,
        '2025-03-24 09:45:41.770796',
        '2025-03-24 09:45:41.770796',
        8,
        8,
        9
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        6,
        '2024-11-05 09:45:41.770808',
        '2024-11-05 09:45:41.770808',
        3,
        6,
        4
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        7,
        '2024-11-16 09:45:41.770819',
        '2024-11-16 09:45:41.770819',
        2,
        10,
        5
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        8,
        '2025-02-04 09:45:41.770832',
        '2025-02-04 09:45:41.770832',
        5,
        8,
        6
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        9,
        '2025-01-25 09:45:41.770845',
        '2025-01-25 09:45:41.770845',
        3,
        1,
        9
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        10,
        '2025-01-22 09:45:41.770856',
        '2025-01-22 09:45:41.770856',
        7,
        10,
        2
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        11,
        '2025-03-15 09:45:41.770868',
        '2025-03-15 09:45:41.770868',
        7,
        8,
        4
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        12,
        '2025-05-01 09:45:41.770880',
        '2025-05-01 09:45:41.770880',
        1,
        1,
        6
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        13,
        '2025-05-12 09:45:41.770892',
        '2025-05-12 09:45:41.770892',
        8,
        7,
        10
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        14,
        '2024-12-27 09:45:41.770904',
        '2024-12-27 09:45:41.770904',
        5,
        2,
        4
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        15,
        '2024-12-18 09:45:41.770914',
        '2024-12-18 09:45:41.770914',
        7,
        3,
        4
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        16,
        '2025-05-16 09:45:41.770925',
        '2025-05-16 09:45:41.770925',
        1,
        3,
        2
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        17,
        '2024-11-17 09:45:41.770936',
        '2024-11-17 09:45:41.770936',
        2,
        5,
        1
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        18,
        '2025-03-20 09:45:41.770947',
        '2025-03-20 09:45:41.770947',
        5,
        7,
        2
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        19,
        '2025-05-09 09:45:41.770959',
        '2025-05-09 09:45:41.770959',
        4,
        10,
        6
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        20,
        '2025-04-29 09:45:41.770971',
        '2025-04-29 09:45:41.770971',
        4,
        1,
        9
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        21,
        '2025-03-18 09:45:41.770982',
        '2025-03-18 09:45:41.770982',
        1,
        8,
        5
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        22,
        '2024-11-27 09:45:41.770993',
        '2024-11-27 09:45:41.770993',
        10,
        10,
        8
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        23,
        '2025-03-24 09:45:41.771005',
        '2025-03-24 09:45:41.771005',
        8,
        3,
        9
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        24,
        '2025-04-14 09:45:41.771017',
        '2025-04-14 09:45:41.771017',
        2,
        1,
        10
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        25,
        '2024-12-21 09:45:41.771028',
        '2024-12-21 09:45:41.771028',
        9,
        8,
        8
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        26,
        '2025-03-16 09:45:41.771039',
        '2025-03-16 09:45:41.771039',
        9,
        6,
        8
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        27,
        '2025-02-02 09:45:41.771050',
        '2025-02-02 09:45:41.771050',
        1,
        9,
        4
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        28,
        '2025-04-23 09:45:41.771061',
        '2025-04-23 09:45:41.771061',
        7,
        9,
        2
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        29,
        '2024-11-30 09:45:41.771072',
        '2024-11-30 09:45:41.771072',
        2,
        7,
        7
    );

INSERT INTO
    article_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        article_id,
        reaction_type_id
    )
VALUES (
        30,
        '2025-02-16 09:45:41.771083',
        '2025-02-16 09:45:41.771083',
        8,
        2,
        7
    );

-- Insertion des réactions dans comment_reactions (unique user_id-comment_id)
INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        1,
        '2025-03-07 09:45:41.771512',
        '2025-03-07 09:45:41.771512',
        6,
        6,
        8
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        2,
        '2025-03-15 09:45:41.771533',
        '2025-03-15 09:45:41.771533',
        6,
        20,
        2
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        3,
        '2025-01-24 09:45:41.771547',
        '2025-01-24 09:45:41.771547',
        10,
        7,
        9
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        4,
        '2025-04-22 09:45:41.771559',
        '2025-04-22 09:45:41.771559',
        1,
        14,
        1
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        5,
        '2024-12-02 09:45:41.771570',
        '2024-12-02 09:45:41.771570',
        9,
        13,
        9
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        6,
        '2025-05-14 09:45:41.771581',
        '2025-05-14 09:45:41.771581',
        9,
        8,
        2
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        7,
        '2024-11-06 09:45:41.771593',
        '2024-11-06 09:45:41.771593',
        9,
        6,
        4
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        8,
        '2025-04-05 09:45:41.771605',
        '2025-04-05 09:45:41.771605',
        2,
        6,
        7
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        9,
        '2025-01-13 09:45:41.771618',
        '2025-01-13 09:45:41.771618',
        1,
        16,
        8
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        10,
        '2025-03-24 09:45:41.771629',
        '2025-03-24 09:45:41.771629',
        6,
        4,
        7
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        11,
        '2025-05-02 09:45:41.771639',
        '2025-05-02 09:45:41.771639',
        5,
        7,
        3
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        12,
        '2025-02-09 09:45:41.771649',
        '2025-02-09 09:45:41.771649',
        2,
        8,
        1
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        13,
        '2025-02-07 09:45:41.771660',
        '2025-02-07 09:45:41.771660',
        4,
        4,
        5
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        14,
        '2025-01-21 09:45:41.771672',
        '2025-01-21 09:45:41.771672',
        3,
        10,
        5
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        15,
        '2025-01-29 09:45:41.771683',
        '2025-01-29 09:45:41.771683',
        3,
        9,
        9
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        16,
        '2024-11-29 09:45:41.771702',
        '2024-11-29 09:45:41.771702',
        7,
        18,
        8
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        17,
        '2025-04-08 09:45:41.771714',
        '2025-04-08 09:45:41.771714',
        6,
        15,
        4
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        18,
        '2025-03-03 09:45:41.771725',
        '2025-03-03 09:45:41.771725',
        2,
        16,
        4
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        19,
        '2025-05-03 09:45:41.771736',
        '2025-05-03 09:45:41.771736',
        6,
        9,
        10
    );

INSERT INTO
    comment_reactions (
        id,
        reaction_date,
        update_date,
        user_id,
        comment_id,
        reaction_type_id
    )
VALUES (
        20,
        '2024-11-10 09:45:41.771747',
        '2024-11-10 09:45:41.771747',
        3,
        7,
        9
    );