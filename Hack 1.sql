PGDMP      	                |            hack 1    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    hack 1    DATABASE     �   CREATE DATABASE "hack 1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "hack 1";
                postgres    false            �            1259    16399 	   countries    TABLE     l   CREATE TABLE public.countries (
    id_country integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    16398    countries_id_country_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_country_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.countries_id_country_seq;
       public          postgres    false    216            �           0    0    countries_id_country_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.countries_id_country_seq OWNED BY public.countries.id_country;
          public          postgres    false    215            �            1259    16406    users    TABLE     �   CREATE TABLE public.users (
    id_users integer NOT NULL,
    id_country integer NOT NULL,
    email character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16405    users_id_users_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_users_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_id_users_seq;
       public          postgres    false    218            �           0    0    users_id_users_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_id_users_seq OWNED BY public.users.id_users;
          public          postgres    false    217            U           2604    16402    countries id_country    DEFAULT     |   ALTER TABLE ONLY public.countries ALTER COLUMN id_country SET DEFAULT nextval('public.countries_id_country_seq'::regclass);
 C   ALTER TABLE public.countries ALTER COLUMN id_country DROP DEFAULT;
       public          postgres    false    216    215    216            V           2604    16409    users id_users    DEFAULT     p   ALTER TABLE ONLY public.users ALTER COLUMN id_users SET DEFAULT nextval('public.users_id_users_seq'::regclass);
 =   ALTER TABLE public.users ALTER COLUMN id_users DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16399 	   countries 
   TABLE DATA           5   COPY public.countries (id_country, name) FROM stdin;
    public          postgres    false    216   �       �          0    16406    users 
   TABLE DATA           B   COPY public.users (id_users, id_country, email, name) FROM stdin;
    public          postgres    false    218          �           0    0    countries_id_country_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.countries_id_country_seq', 1, false);
          public          postgres    false    215            �           0    0    users_id_users_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.users_id_users_seq', 1, false);
          public          postgres    false    217            X           2606    16404    countries countries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id_country);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    216            Z           2606    16411    users users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_users);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            [           2606    16412    users users_id_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_country_fkey FOREIGN KEY (id_country) REFERENCES public.countries(id_country);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id_country_fkey;
       public          postgres    false    218    4696    216            �      x������ � �      �      x������ � �     