PGDMP                      |            my_postgres    16.3    16.3     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    my_postgres    DATABASE     m   CREATE DATABASE my_postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE my_postgres;
                postgres    false            �            1259    16400 	   employees    TABLE     �   CREATE TABLE public.employees (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    "position" character varying(100) NOT NULL,
    salary numeric(10,2) NOT NULL,
    hire_date date NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16399    employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    216                       0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    215            s           2604    16403    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                      0    16400 	   employees 
   TABLE DATA           L   COPY public.employees (id, name, "position", salary, hire_date) FROM stdin;
    public          postgres    false    216   �
                  0    0    employees_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employees_id_seq', 3, true);
          public          postgres    false    215            u           2606    16405    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    216               _   x�3�t�L��S�M��-M�/��,VpL����0 =N##C]C]C.CN�Ԍ��dǪĢ�LN�ԲԜ���"N3S�j#�R]CS�=... SFV     