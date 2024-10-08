PGDMP       
                |            hack 3-4    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16442    hack 3-4    DATABASE     �   CREATE DATABASE "hack 3-4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "hack 3-4";
                postgres    false            �            1259    16458    contact_request    TABLE       CREATE TABLE public.contact_request (
    id_email integer NOT NULL,
    id_country integer NOT NULL,
    id_priority integer NOT NULL,
    name character varying(50) NOT NULL,
    detail text NOT NULL,
    physical_address character varying(100) NOT NULL
);
 #   DROP TABLE public.contact_request;
       public         heap    postgres    false            �            1259    16457    contact_request_id_email_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_request_id_email_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.contact_request_id_email_seq;
       public          postgres    false    220                        0    0    contact_request_id_email_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.contact_request_id_email_seq OWNED BY public.contact_request.id_email;
          public          postgres    false    219            �            1259    16444 	   countries    TABLE     l   CREATE TABLE public.countries (
    id_country integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    16443    countries_id_country_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_country_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.countries_id_country_seq;
       public          postgres    false    216                       0    0    countries_id_country_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.countries_id_country_seq OWNED BY public.countries.id_country;
          public          postgres    false    215            �            1259    16451 
   priorities    TABLE     s   CREATE TABLE public.priorities (
    id_priority integer NOT NULL,
    type_name character varying(50) NOT NULL
);
    DROP TABLE public.priorities;
       public         heap    postgres    false            �            1259    16450    priorities_id_priority_seq    SEQUENCE     �   CREATE SEQUENCE public.priorities_id_priority_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.priorities_id_priority_seq;
       public          postgres    false    218                       0    0    priorities_id_priority_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.priorities_id_priority_seq OWNED BY public.priorities.id_priority;
          public          postgres    false    217            \           2604    16461    contact_request id_email    DEFAULT     �   ALTER TABLE ONLY public.contact_request ALTER COLUMN id_email SET DEFAULT nextval('public.contact_request_id_email_seq'::regclass);
 G   ALTER TABLE public.contact_request ALTER COLUMN id_email DROP DEFAULT;
       public          postgres    false    220    219    220            Z           2604    16447    countries id_country    DEFAULT     |   ALTER TABLE ONLY public.countries ALTER COLUMN id_country SET DEFAULT nextval('public.countries_id_country_seq'::regclass);
 C   ALTER TABLE public.countries ALTER COLUMN id_country DROP DEFAULT;
       public          postgres    false    216    215    216            [           2604    16454    priorities id_priority    DEFAULT     �   ALTER TABLE ONLY public.priorities ALTER COLUMN id_priority SET DEFAULT nextval('public.priorities_id_priority_seq'::regclass);
 E   ALTER TABLE public.priorities ALTER COLUMN id_priority DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16458    contact_request 
   TABLE DATA           l   COPY public.contact_request (id_email, id_country, id_priority, name, detail, physical_address) FROM stdin;
    public          postgres    false    220   '       �          0    16444 	   countries 
   TABLE DATA           5   COPY public.countries (id_country, name) FROM stdin;
    public          postgres    false    216   �       �          0    16451 
   priorities 
   TABLE DATA           <   COPY public.priorities (id_priority, type_name) FROM stdin;
    public          postgres    false    218                      0    0    contact_request_id_email_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.contact_request_id_email_seq', 3, true);
          public          postgres    false    219                       0    0    countries_id_country_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.countries_id_country_seq', 5, true);
          public          postgres    false    215                       0    0    priorities_id_priority_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.priorities_id_priority_seq', 3, true);
          public          postgres    false    217            b           2606    16465 $   contact_request contact_request_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.contact_request
    ADD CONSTRAINT contact_request_pkey PRIMARY KEY (id_email);
 N   ALTER TABLE ONLY public.contact_request DROP CONSTRAINT contact_request_pkey;
       public            postgres    false    220            ^           2606    16449    countries countries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id_country);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    216            `           2606    16456    priorities priorities_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.priorities
    ADD CONSTRAINT priorities_pkey PRIMARY KEY (id_priority);
 D   ALTER TABLE ONLY public.priorities DROP CONSTRAINT priorities_pkey;
       public            postgres    false    218            c           2606    16466 /   contact_request contact_request_id_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_request
    ADD CONSTRAINT contact_request_id_country_fkey FOREIGN KEY (id_country) REFERENCES public.countries(id_country);
 Y   ALTER TABLE ONLY public.contact_request DROP CONSTRAINT contact_request_id_country_fkey;
       public          postgres    false    216    220    4702            d           2606    16471 0   contact_request contact_request_id_priority_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_request
    ADD CONSTRAINT contact_request_id_priority_fkey FOREIGN KEY (id_priority) REFERENCES public.priorities(id_priority);
 Z   ALTER TABLE ONLY public.contact_request DROP CONSTRAINT contact_request_id_priority_fkey;
       public          postgres    false    4704    218    220            �   �   x�]�;�0k�{�)�AH���HK�d/�JƋ�I�QPq_�Т)��̰sFjo�U���ff�TO�)�SSa3�Ń��f�"X���ǩ"҄4ӥ���A�]�N�'\����L����X9��(�����_�k5�      �   <   x�3�t,JO�+��K�2�t���I�2�-*M/M��2�t*J,���2�H,J���qqq �      �   #   x�3�t�)I�2��MM�L�2�tJ�J����� ^�H     