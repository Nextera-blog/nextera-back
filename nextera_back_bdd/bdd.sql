-- Supprime la base de données si elle existe
DROP DATABASE IF EXISTS nextera;

-- Crée la base de données
CREATE DATABASE IF NOT EXISTS nextera CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Utilise la base de données
USE nextera;

-- TABLE : Auteurs
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT,
    profile_picture_url VARCHAR(255),
    join_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- TABLE : Articles
CREATE TABLE articles (
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE SET NULL
);

-- TABLE : Commentaires
CREATE TABLE comments (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT NOT NULL,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    author_id INT,
    article_id INT,
    -- FOREIGN KEY (author_id) REFERENCES users(id),
    FOREIGN KEY (article_id) REFERENCES articles(article_id) ON DELETE CASCADE
);

-- TABLE : Tags
CREATE TABLE tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- TABLE : Articles <-> Tags
CREATE TABLE article_tags (
    article_id INT,
    tag_id INT,
    PRIMARY KEY (article_id, tag_id),
    FOREIGN KEY (article_id) REFERENCES articles(article_id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES tags(tag_id) ON DELETE CASCADE
);

-- TABLE : Types de réactions
CREATE TABLE reaction_types (
    reaction_type_id INT AUTO_INCREMENT PRIMARY KEY,
    emoji VARCHAR(10) NOT NULL,
    description VARCHAR(50) NOT NULL
);


-- TABLE : Réactions sur articles
CREATE TABLE article_reactions (
    user_id INT,
    article_id INT,
    reaction_type_id INT,
    reaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, article_id, reaction_type_id),
    -- FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (article_id) REFERENCES articles(article_id) ON DELETE CASCADE,
    FOREIGN KEY (reaction_type_id) REFERENCES reaction_types(reaction_type_id) ON DELETE CASCADE
);

-- TABLE : Réactions sur commentaires
CREATE TABLE comment_reactions (
    user_id INT,
    comment_id INT,
    reaction_type_id INT,
    reaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, comment_id, reaction_type_id),
    -- FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id) ON DELETE CASCADE,
    FOREIGN KEY (reaction_type_id) REFERENCES reaction_types(reaction_type_id) ON DELETE CASCADE
);


-- TABLE : Rôles

CREATE TABLE roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL UNIQUE
);


-- TABLE : Association utilisateurs <-> rôles

CREATE TABLE users_roles (
    user_id INT,
    role_id INT,
    PRIMARY KEY (user_id, role_id),
    -- FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);


-- Index pour amélioration des performances

CREATE INDEX idx_user_article_reactions ON article_reactions(user_id, article_id);
CREATE INDEX idx_user_comment_reactions ON comment_reactions(user_id, comment_id);
CREATE INDEX idx_article_id ON comments(article_id);
CREATE INDEX idx_tag_name ON tags(name);
CREATE INDEX idx_article_id_tags ON article_tags(article_id);


-- Données d'exemple : types de réactions
INSERT IGNORE INTO reaction_types (emoji, description) VALUES
('👍', 'Like'),
('❤️', 'Love'),
('😂', 'Funny'),
('😮', 'Surprised'),
('😢', 'Sad'),
('😡', 'Angry');


-- Données d'exemple : rôles
INSERT IGNORE INTO roles (role_name) VALUES
('Admin'),
('Author'),
('Visitor');
