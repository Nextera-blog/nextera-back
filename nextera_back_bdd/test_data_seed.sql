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
        'Super',
        'Admin',
        'admin@admin.com',
        1,
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'Bart',
        'Bertrand',
        'Barthelemy',
        'bart@example.com',
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'LouiH',
        'Louis',
        'Hoarau',
        'louis.h@example.com',
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'Val',
        'Valentine',
        'Renaud',
        'valre@example.com',
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'Lule',
        'Lucie',
        'Legros',
        'lule@example.com',
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'Nath',
        'Nathalie',
        'Carlier',
        'nath@example.com',
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'Mariou',
        'Margaret',
        'Riou',
        'mariou@example.com',
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'Will',
        'William',
        'Antoine',
        'want@example.com',
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'Dom',
        'Dominique',
        'Guyon',
        'dom@example.com',
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
        'pbkdf2_sha256$1000000$sHveJrSYqyM3V0zeCbO8fD$Z936Ugu2wjmNtCCaBwebe+rZ9dbWc+/4NYY5m+SwWrs=',
        NULL,
        0,
        'Ymace',
        'Yves',
        'Mace',
        'yves@example.com',
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
        'Fascinée par les orages et les mythes anciens, elle écrit comme on sculpte le marbre : avec lenteur et précision.
Son univers brouille les frontières entre rêve et mémoire.',
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
        'Passionné par les ruelles oubliées et les silences lourds, il tisse des récits où chaque mot semble voler en éclats.
Son style mêle poésie sèche et tension contenue, comme un fil qu’on tend jusqu’à la rupture.',
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
        'Amateur de jazz et de nuits sans lune, il écrit des histoires qui sentent le tabac froid et la mélancolie douce.
Ses phrases courtes laissent souvent plus de place au vide qu’aux mots.',
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
        'Obsédée par les détails invisibles, elle insuffle à ses personnages une fragilité quasi transparente.
Son écriture effleure les émotions comme le vent passe dans les rideaux.',
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
        'Nourri d’absurde et de littérature post-soviétique, il bâtit des récits grinçants dans des décors dépeuplés.
Il aime que ses histoires dérangent sans jamais hausser le ton.',
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
        'Elle aime les forêts, les langues mortes et les silences pleins de sens.
Son style se construit comme un sortilège ancien : elliptique, précis, inévitable.',
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
        'Il collectionne les cartes postales jamais envoyées et les débuts de romans sans fin.
Son écriture, brute et nerveuse, ne laisse aucune échappatoire à ses personnages.',
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
        'Fascinée par les jeux d’enfants et les horloges cassées, elle écrit à la frontière du fantastique et du quotidien.
Son style est fluide, rêveur, parfois cruel sans y toucher.',
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
        'Elle aime les villes vides au petit matin et les lettres jamais ouvertes.
Son écriture est minimale, presque fantomatique, avec des éclats de lumière bien placés.',
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
        'Lui, c’est les archives, les souvenirs falsifiés et les amours sans preuve.
Il écrit comme on enquête : lentement, méthodiquement, avec une touche d’ironie désabusée.',
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
        'Pourquoi apprendre Python en 2025 ?',
        'Python reste l’un des langages les plus accessibles et polyvalents. Il est utilisé aussi bien en data science, développement web, qu’en intelligence artificielle. Sa syntaxe claire permet une prise en main rapide, même pour les débutants. En 2025, la majorité des grandes plateformes cloud offrent un support optimisé pour Python. De plus, la communauté est massive, avec une documentation riche. C’est un choix sûr pour tout développeur qui débute ou qui veut se reconvertir rapidement.',
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
        'Les API REST sont-elles dépassées ?',
        'Avec la montée de GraphQL et gRPC, certains pensent que REST est obsolète. Pourtant, sa simplicité et sa lisibilité restent inégalées dans de nombreux cas d’usage. Les API REST s’intègrent facilement dans des écosystèmes variés. Le vrai enjeu aujourd’hui est de bien documenter et versionner ses endpoints. REST n’est pas mort : il a juste trouvé sa place dans un paysage plus riche.',
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
        'Dark Mode ou Light Mode : le faux débat ?',
        'Le débat entre le thème sombre et clair est plus une question d’usage que de technologie. Les développeurs optent souvent pour le dark mode par confort visuel. Cependant, côté accessibilité, le light mode reste plus lisible pour certains profils. L’important est d’offrir le choix à l’utilisateur. En design, un bon thème sombre nécessite autant de soin qu’un thème clair.',
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
        'Git : 5 erreurs que font (encore) les devs',
        'Travailler sur main directement.

Commiter des fichiers secrets.

Ne pas écrire de messages clairs.

Utiliser force push sans savoir pourquoi.

Oublier de tirer les dernières modifications.
Git est puissant, mais sans rigueur, il devient vite source de chaos.',
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
        'Le mythe du fullstack "maître de tout',
        'Être fullstack ne signifie pas être expert en tout. Le rôle demande plutôt une compréhension large et la capacité à faire le lien entre frontend et backend. En réalité, la spécialisation reste essentielle dans les projets complexes. Le danger, c’est de sacrifier la qualité sur l’autel de la polyvalence. Un bon fullstack sait quand demander de l’aide.',
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
        ' L’IA va-t-elle remplacer les développeurs ?',
        'Non, mais elle va transformer le métier. Les outils comme GitHub Copilot ou ChatGPT boostent la productivité, surtout sur des tâches répétitives. Les devs devront apprendre à collaborer avec ces outils plutôt qu’à les craindre. L’essentiel restera la pensée critique, la structuration, et l’architecture des systèmes. L’IA écrit du code, pas des logiciels.',
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
        'React, toujours roi du frontend ?',
        'React domine encore, mais la concurrence s’intensifie : Svelte, SolidJS, et Qwik gagnent du terrain. Le problème de React reste sa courbe d’apprentissage avec l’écosystème : hooks, context, Redux… Pas toujours simple pour débuter. Malgré tout, sa communauté, ses outils et sa stabilité le rendent incontournable en entreprise.',
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
        'Pourquoi tu devrais (vraiment) écrire des tests',
        'Les tests ne sont pas une perte de temps. Ils évitent les régressions, facilitent les refactorings et rassurent en production. Le TDD (Test Driven Development) n’est pas obligatoire, mais tester l’essentiel l’est. Un bug en prod coûte toujours plus cher qu’un test écrit trop tôt.',
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
        'Docker en 3 commandes essentielles',
        'docker build : crée une image depuis un Dockerfile.

docker run : lance un conteneur.

docker ps : liste les conteneurs en cours.
Docker simplifie le déploiement et l’isolation d’applications. Si tu débutes, commence par containeriser un projet simple. Ensuite, explore Docker Compose.',
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
        'Faut-il vraiment apprendre C en 2025 ?',
        'Le langage C reste utile pour comprendre les bases du bas niveau : mémoire, pointeurs, compilation. Mais pour la majorité des développeurs modernes, ce n’est pas indispensable. Si tu travailles en embarqué, systèmes ou performance extrême, oui. Sinon, apprends Rust ou Go : plus modernes, plus sûrs.',
        '2024-12-26 09:45:41.768646',
        '2024-12-26 09:45:41.768646',
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
        11,
        'L’IA va-t-elle vraiment remplacer les développeurs ?',
        'Depuis l’émergence de ChatGPT, Copilot et des modèles génératifs de code, une question revient sans cesse : les développeurs sont-ils voués à disparaître ?
Spoiler : non. Mais le métier change profondément.
1. Ce que l’IA sait (vraiment) faire aujourd’hui

Les outils d’intelligence artificielle peuvent aujourd’hui :

    Générer du code à partir de prompts clairs.

    Compléter des fonctions automatiquement.

    Proposer des corrections syntaxiques ou des refactorings.

    Résoudre des bugs simples ou évidents.

Mais ce qu’ils ne savent pas faire, c’est :

    Comprendre un besoin métier complexe.

    Dialoguer avec un client pour définir une solution viable.

    Concevoir une architecture propre et évolutive.

    Prendre en compte les contraintes d’une équipe, d’un budget, d’un marché.

2. Le développeur devient supervisé

L’évolution est comparable à celle de la médecine : le médecin ne disparaît pas avec Google, il devient plus assisté.
Le développeur de demain saura mieux :

    Utiliser l’IA pour générer des briques de code.

    Valider, corriger, structurer ce qui est produit.

    Se concentrer sur l’essentiel : l’architecture, la logique, l’expérience utilisateur.

3. L’IA n’est pas fiable à 100%

Un LLM (large language model) est une machine à prédire le mot suivant. Il n’a pas de compréhension réelle du contexte métier ni des conséquences à long terme d’un mauvais design.
Tu ne peux pas lui faire confiance aveuglément. Le code qu’il écrit fonctionne parfois, mais peut :

    Contenir des failles de sécurité.

    Être inefficace ou non maintenable.

    Reproduire des patterns obsolètes ou dangereux.

4. De nouveaux métiers émergent

Au lieu de remplacer les devs, l’IA crée des nouveaux rôles :

    AI Engineer : conçoit, entraîne et ajuste des modèles.

    Prompt Engineer : rédige des instructions claires et efficaces pour piloter des IA.

    Code Reviewer IA : supervise et valide les résultats générés automatiquement.

5. En conclusion

L’IA ne remplace pas les développeurs. Elle remplace certaines tâches répétitives.
Les développeurs qui sauront s’adapter, collaborer avec l’IA et continuer à apprendre seront ceux qui resteront indispensables.
Le code de demain sera peut-être généré, mais il sera toujours conçu, validé et compris par des humains.',
        '2024-12-26 09:45:41.768646',
        '2024-12-26 09:45:41.768646',
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
        12,
        '10 erreurs que font encore les développeurs (et comment les éviter)',
        'Même avec de l’expérience, certaines erreurs reviennent dans la pratique quotidienne. Voici un top 10 des pièges classiques — et comment les éviter.
1. Travailler directement sur la branche main

➡️ Pourquoi c’est risqué : en cas d’erreur, tu pollues la base de code principale.
✅ Crée une branche pour chaque fonctionnalité ou bugfix.
2. Ne pas écrire de tests

➡️ Tu crois gagner du temps, mais tu en perds en débogage.
✅ Écris au moins des tests unitaires sur les fonctions critiques.
3. Mauvaise gestion des secrets

➡️ Des clés d’API ou mots de passe se retrouvent souvent dans des dépôts publics.
✅ Utilise des fichiers .env et un .gitignore correctement configuré.
4. Commits vagues : "fix", "update", "essai"

➡️ Impossible de comprendre l’historique.
✅ Utilise des messages clairs comme : fix: corrige bug formulaire mobile.
5. Ne pas relire son propre code

➡️ Tu soumets du code avec des erreurs évidentes.
✅ Prends 2 minutes pour te relire avant de pousser.
6. Mal utiliser git push --force

➡️ Tu peux écraser le travail des autres.
✅ Utilise --force-with-lease et uniquement sur ta propre branche.
7. Ne pas mettre à jour avant de coder

➡️ Tu crées des conflits inutiles.
✅ Toujours faire un git pull ou git fetch avant de commencer.
8. Trop de logique dans le frontend

➡️ Les règles métier doivent rester côté backend.
✅ Clarifie la responsabilité de chaque couche.
9. Refuser de documenter

➡️ Ton code devient inutilisable par d’autres.
✅ Même 3 lignes de commentaire changent tout.
10. Surcharger les fonctions

➡️ Une fonction de 200 lignes est ingérable.
✅ Applique le principe single responsibility : une fonction, une action.
Conclusion

Faire des erreurs, c’est normal. Les corriger, c’est ça être un bon développeur.
Et toi, combien de ces erreurs as-tu faites cette semaine ? 😄',
        '2024-12-26 09:45:41.768646',
        '2024-12-26 09:45:41.768646',
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
        13,
        'Pourquoi tu devrais apprendre les bases de Linux (même si tu es dev frontend)',
        '

    https://explainshell.com (explique chaque commande)

    La commande magique : man (ex : man grep)

Conclusion

Pas besoin de devenir sysadmin. Mais savoir naviguer dans un terminal, manipuler des fichiers, comprendre les permissions, c’est un vrai plus.
Que tu sois dev frontend, fullstack ou juste curieux : Linux, c’est une compétence qui paie.',
        '2024-12-26 09:45:41.768646',
        '2024-12-26 09:45:41.768646',
        1
    );

-- Insertion des commentaires dans comments
-- Commentaires racines
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
        'Super clair et bien expliqué, merci pour l’article !',
        '2025-05-21 10:00:00',
        '2025-05-21 10:00:00',
        1,
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
        2,
        'Bonne remarque sur ce sujet.',
        '2025-05-21 09:50:00',
        '2025-05-21 09:50:00',
        1,
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
        3,
        'Merci pour cette précision.',
        '2025-05-21 09:40:00',
        '2025-05-21 09:40:00',
        2,
        NULL,
        3
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
        'Exactement ce que je pensais.',
        '2025-05-21 09:30:00',
        '2025-05-21 09:30:00',
        2,
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
        5,
        'Merci pour le partage de ce point de vue.',
        '2025-05-21 09:20:00',
        '2025-05-21 09:20:00',
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
        6,
        'Ce sujet mériterait presque une mini-série d’articles 🔥',
        '2025-05-21 09:10:00',
        '2025-05-21 09:10:00',
        3,
        NULL,
        1
    );

-- Réponses aux racines
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
        'Bonne remarque sur ce sujet.',
        '2025-05-21 09:05:00',
        '2025-05-21 09:05:00',
        1,
        1,
        3
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
        'Merci pour cette précision.',
        '2025-05-21 09:00:00',
        '2025-05-21 09:00:00',
        1,
        1,
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
        9,
        'Peux-tu expliquer davantage ?',
        '2025-05-21 08:55:00',
        '2025-05-21 08:55:00',
        1,
        2,
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
        10,
        'Réponse intéressante à approfondir.',
        '2025-05-21 08:50:00',
        '2025-05-21 08:50:00',
        2,
        3,
        3
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
        'Simple, direct, efficace. Bravo !',
        '2025-05-21 08:45:00',
        '2025-05-21 08:45:00',
        2,
        3,
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
        12,
        'J’aurais aimé un exemple concret à la fin, mais sinon top !',
        '2025-05-21 08:40:00',
        '2025-05-21 08:40:00',
        2,
        4,
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
        13,
        'Toujours un plaisir de lire ce genre de contenu bien structuré.',
        '2025-05-21 08:35:00',
        '2025-05-21 08:35:00',
        3,
        5,
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
        14,
        'Peux-tu expliquer davantage ?',
        '2025-05-21 08:30:00',
        '2025-05-21 08:30:00',
        3,
        6,
        3
    );

-- Petits-enfants (niveau 3)
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
        'Je ne suis pas forcément d’accord avec tout, mais c’est bien argumenté.',
        '2025-05-21 08:25:00',
        '2025-05-21 08:25:00',
        1,
        7,
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
        16,
        'Exactement ce que je pensais.',
        '2025-05-21 08:20:00',
        '2025-05-21 08:20:00',
        2,
        10,
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
        17,
        'Merci pour le partage de ce point de vue.',
        '2025-05-21 08:15:00',
        '2025-05-21 08:15:00',
        3,
        13,
        2
    );

-- Autres enfants
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
        'Bonne remarque sur ce sujet.',
        '2025-05-21 08:10:00',
        '2025-05-21 08:10:00',
        1,
        2,
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
        19,
        'Réponse intéressante à approfondir.',
        '2025-05-21 08:05:00',
        '2025-05-21 08:05:00',
        3,
        6,
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
        20,
        'Très utile, je vais tester ça dès demain au boulot.',
        '2025-05-21 08:00:00',
        '2025-05-21 08:00:00',
        3,
        19,
        3
    );

-- Association des tags aux articles dans article_tags
INSERT INTO article_tags (id, article_id, tag_id) VALUES (1, 1, 3);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (2, 2, 7);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (3, 2, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (4, 2, 1);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (5, 3, 7);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (6, 3, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (7, 4, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (8, 4, 10);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (9, 5, 2);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (10, 6, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (11, 6, 7);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (12, 6, 6);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (13, 7, 2);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (14, 7, 3);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (15, 8, 3);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (16, 8, 4);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (17, 9, 5);

INSERT INTO article_tags (id, article_id, tag_id) VALUES (18, 10, 9);

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