# Nextera back-end
-- Tags (utilise INSERT IGNORE pour éviter doublons sur nom UNIQUE)
INSERT IGNORE INTO tags (id, nom) VALUES
(1, 'actualité'),
(2, 'conseils'),
(3, 'tech'),
(4, 'auteur'),
(5, 'interview'),
(6, 'mise à jour'),
(7, 'inspiration'),
(8, 'SEO');

-- Articles
INSERT INTO articles (id, titre, contenu, date_creation, autor_id)
VALUES 
(1, 'Bienvenue sur Nextera', 'Découvrez notre nouvelle plateforme.', NOW(), 1),
(2, 'Top 5 des outils pour les auteurs', 'Un comparatif utile pour les écrivains.', NOW(), 2),
(3, 'Améliorer son SEO en 2025', 'Les techniques à connaître absolument.', NOW(), 3),
(4, 'Interview d’un auteur à succès', 'Rencontre avec Sarah M.', NOW(), 4),
(5, 'Nouveautés de la version 1.2', 'Mises à jour et corrections.', NOW(), 5),
(6, 'Réflexions sur l’écriture créative', 'Exploration de l’inspiration.', NOW(), 6)
ON DUPLICATE KEY UPDATE titre=VALUES(titre); -- si l’ID existe, on met à jour le titre

-- Commentaires
INSERT INTO commentaires (id, contenu, date_creation, autor_id, article_id) VALUES
(1, 'Bravo pour le lancement !', NOW(), 2, 1),
(2, 'Très utile, merci !', NOW(), 3, 1),
(3, 'Super comparatif !', NOW(), 1, 2),
(4, 'Et pour les outils gratuits ?', NOW(), 4, 2),
(5, 'Article bien structuré.', NOW(), 5, 3),
(6, 'J’aurais aimé plus d’exemples.', NOW(), 6, 3),
(7, 'Inspirant !', NOW(), 1, 4),
(8, 'Merci pour cette interview.', NOW(), 3, 4),
(9, 'Hâte de tester les nouveautés.', NOW(), 2, 5),
(10, 'La v1.2 est bien plus rapide !', NOW(), 6, 5),
(11, 'Très beau texte.', NOW(), 5, 6),
(12, 'Quelle belle plume !', NOW(), 4, 6)
ON DUPLICATE KEY UPDATE contenu=VALUES(contenu);

-- Liaisons article-tags
INSERT IGNORE INTO article_tags (article_id, tag_id) VALUES
(1, 1),
(2, 2), (2, 3),
(3, 2), (3, 8),
(4, 4), (4, 5),
(5, 1), (5, 6),
(6, 2), (6, 7);

-- Réactions articles (IGNORES si déjà là grâce à clé primaire composée)
INSERT IGNORE INTO reactions_articles (user_id, article_id, type_reaction_id) VALUES
(2, 1, 1), (3, 1, 2), (4, 1, 3),
(1, 2, 1), (5, 2, 2), (6, 2, 4),
(2, 3, 1), (3, 3, 5),
(1, 4, 2), (6, 4, 1),
(3, 5, 1), (4, 5, 6),
(2, 6, 2), (5, 6, 4);

-- Réactions commentaires
INSERT IGNORE INTO reactions_commentaires (user_id, commentaire_id, type_reaction_id) VALUES
(1, 1, 1), (3, 1, 2),
(4, 2, 3),
(2, 3, 1), (5, 3, 5),
(6, 4, 6),
(1, 5, 1), (2, 5, 2),
(3, 6, 3),
(4, 7, 2), (5, 7, 4),
(6, 8, 1),
(1, 9, 2), (3, 9, 3),
(5, 10, 1),
(2, 11, 5),
(6, 12, 2);
