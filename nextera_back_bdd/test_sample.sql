-- Données d'exemple : Auteurs
INSERT INTO authors (name, bio, profile_picture_url) VALUES
('Alice Dupont', 'Journaliste passionnée de science, elle écrit régulièrement pour des magazines scientifiques.', 'https://example.com/profiles/alice.jpg'),
('David Moreau', 'Blogueur spécialisé en minimalisme, avec un penchant pour la technologie et l\'écologie.', 'https://example.com/profiles/david.jpg'),
('Sophie Martin', 'Écrivaine et créatrice de contenu autour du développement personnel et des voyages.', 'https://example.com/profiles/sophie.jpg'),
('Marc Leclerc', 'Développeur web et passionné par l\'intelligence artificielle et la blockchain.', 'https://example.com/profiles/marc.jpg');

-- Données d'exemple : Articles
INSERT INTO articles (title, content, author_id) VALUES
('Le minimalisme numérique expliqué simplement', 'Le minimalisme numérique consiste à réduire la surcharge digitale...', 2),
('Les découvertes scientifiques de 2023', '2023 a été une année marquée par des avancées révolutionnaires...', 1),
('10 astuces pour un voyage écoresponsable', 'Voyager tout en respectant l\'environnement, voici comment...', 3),
('Blockchain : l\'avenir du web décentralisé', 'La blockchain est plus qu\'une simple technologie, elle représente l\'avenir du web...', 4);

-- Données d'exemple : Commentaires
INSERT INTO comments (content, author_id, article_id) VALUES
('Très bon article, merci pour ces informations pratiques.', 1, 1),
('Article très pertinent, j\'ai beaucoup appris !', 2, 1),
('J\'adore ce sujet, surtout la partie sur l\'écologie.', 3, 2),
('Je n\'y connais rien, mais l\'article est bien écrit !', 4, 2),
('Des idées intéressantes pour les voyageurs !', 1, 3),
('Je vais appliquer ces astuces lors de mon prochain voyage.', 3, 3),
('Cet article est un peu trop technique pour moi...', 2, 4),
('Vivement l\'avenir de la blockchain !', 1, 4);

-- Données d'exemple : Tags
INSERT INTO tags (name) VALUES
('Technologie'), 
('Science'), 
('Voyages'), 
('Développement Personnel'),
('Blockchain'), 
('Minimalisme'), 
('Environnement');

-- Données d'exemple : Association Article-Tag
INSERT INTO article_tags (article_id, tag_id) VALUES
(1, 6), (1, 7),
(2, 2), (2, 1),
(3, 3), (3, 7),
(4, 5), (4, 1);

-- Données d'exemple : Réactions sur articles
INSERT INTO article_reactions (user_id, article_id, reaction_type_id, reaction_date) VALUES
(1, 1, 1, '2025-04-17 10:30:00'),
(2, 1, 2, '2025-04-17 11:00:00'),
(3, 2, 1, '2025-04-17 12:30:00'),
(4, 3, 3, '2025-04-17 14:00:00'),
(2, 4, 4, '2025-04-17 15:00:00');

-- Données d'exemple : Réactions sur commentaires
INSERT INTO comment_reactions (user_id, comment_id, reaction_type_id, reaction_date) VALUES
(1, 1, 1, '2025-04-17 10:40:00'),
(2, 2, 2, '2025-04-17 11:05:00'),
(3, 3, 3, '2025-04-17 12:35:00'),
(4, 4, 4, '2025-04-17 14:05:00'),
(1, 5, 5, '2025-04-17 15:10:00');

-- Données d'exemple : Assignation des rôles aux utilisateurs
INSERT INTO users_roles (user_id, role_id) VALUES
(1, 1), -- Alice : Admin
(2, 2), -- David : Author
(3, 2), -- Sophie : Author
(4, 3); -- Marc : Visitor
