//создание базы и таблиц

create schema blog11;

create table categories
(
    id         bigint unsigned auto_increment
        primary key,
    name       varchar(255) not null,
    slug       varchar(255) not null,
    created_at datetime     null,
    updated_at datetime     null,
    constraint categories_name_uindex
        unique (name),
    constraint categories_slug_uindex
        unique (slug)
);

create table tags
(
    id         bigint unsigned auto_increment
        primary key,
    name       varchar(255) not null,
    created_at datetime     null,
    updated_at datetime     null
);

create table users
(
    id         bigint unsigned auto_increment
        primary key,
    first_name varchar(255) not null,
    last_name  varchar(255) not null,
    email      varchar(255) not null,
    updated_at datetime     null,
    created_at datetime     null,
    constraint users_email_uindex
        unique (email)
);

create table posts
(
    id          bigint unsigned auto_increment
        primary key,
    title       varchar(255)    not null,
    body        varchar(255)    not null,
    image       varchar(255)    null,
    created_at  datetime        null,
    updated_at  datetime        null,
    category_id bigint unsigned null,
    user_id     bigint unsigned not null,
    constraint posts_categories_id_fk
        foreign key (category_id) references categories (id)
            on update cascade on delete cascade,
    constraint posts_users_id_fk
        foreign key (user_id) references users (id)
            on update cascade on delete cascade
);

create table post_tag
(
    post_id bigint unsigned not null,
    tag_id  bigint unsigned not null,
    constraint posts_tags_posts_id_fk
        foreign key (post_id) references posts (id)
            on update cascade on delete cascade,
    constraint posts_tags_tags_id_fk
        foreign key (tag_id) references tags (id)
            on update cascade on delete cascade
);



//заполнение таблиц
INSERT INTO blog11.categories (id, name, slug, created_at, updated_at) VALUES (1, 'News', '/news', '2019-10-02 11:57:31', '2019-10-02 11:57:33');
INSERT INTO blog11.categories (id, name, slug, created_at, updated_at) VALUES (2, 'Memories', '/memories', '2019-10-02 11:57:56', '2019-10-02 11:58:00');

INSERT INTO blog11.tags (id, name, created_at, updated_at) VALUES (1, 'new', null, null);
INSERT INTO blog11.tags (id, name, created_at, updated_at) VALUES (2, 'emergency', null, null);
INSERT INTO blog11.tags (id, name, created_at, updated_at) VALUES (3, 'warning', null, null);
INSERT INTO blog11.tags (id, name, created_at, updated_at) VALUES (4, 'calm', null, null);

INSERT INTO blog11.users (id, first_name, last_name, email, updated_at, created_at) VALUES (1, 'John', 'Doe', 'john.doe@gmail.com', '2019-10-02 12:08:42', '2019-10-02 12:08:46');
INSERT INTO blog11.users (id, first_name, last_name, email, updated_at, created_at) VALUES (2, 'Bart', 'Simpson', 'bart.simpson@gmail.com', '2019-10-02 12:31:57', '2019-10-02 12:32:02');

INSERT INTO blog11.post_tag (post_id, tag_id) VALUES (3, 1);
INSERT INTO blog11.post_tag (post_id, tag_id) VALUES (3, 2);
INSERT INTO blog11.post_tag (post_id, tag_id) VALUES (3, 4);
INSERT INTO blog11.post_tag (post_id, tag_id) VALUES (4, 3);
INSERT INTO blog11.post_tag (post_id, tag_id) VALUES (4, 1);
INSERT INTO blog11.post_tag (post_id, tag_id) VALUES (5, 4);
INSERT INTO blog11.post_tag (post_id, tag_id) VALUES (5, 2);

INSERT INTO blog11.posts (id, title, body, image, created_at, updated_at, category_id, user_id) VALUES (3, 'About my cat', 'jkjsvndskjnhfsljhb jdfshkjhjghkjsdfhg', null, '2019-10-02 12:09:26', '2019-10-02 12:09:30', 1, 1);
INSERT INTO blog11.posts (id, title, body, image, created_at, updated_at, category_id, user_id) VALUES (4, 'Post2', 'BodyPost2', null, null, null, 2, 2);
INSERT INTO blog11.posts (id, title, body, image, created_at, updated_at, category_id, user_id) VALUES (5, 'About cat again', 'BodyPost3', null, null, null, 1, 1);
INSERT INTO blog11.posts (id, title, body, image, created_at, updated_at, category_id, user_id) VALUES (6, 'Post3', 'BodyPost3', null, null, null, 1, 2);

//запрос постов через теги
SELECT *
FROM posts
         JOIN  post_tag ON posts.id=post_tag.post_id
WHERE post_tag.tag_id=2;
