PGDMP     &    
                y           adminv    13.3    13.3 *    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    adminv    DATABASE     b   CREATE DATABASE adminv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE adminv;
                postgres    false            �           0    0    DATABASE adminv    COMMENT     -   COMMENT ON DATABASE adminv IS 'Veterinaria';
                   postgres    false    3036            �            1259    24614    citas    TABLE     �   CREATE TABLE public.citas (
    id bigint NOT NULL,
    nombre character varying NOT NULL,
    fecha character varying NOT NULL
);
    DROP TABLE public.citas;
       public         heap    postgres    false            �            1259    24612    citas_id_seq    SEQUENCE     u   CREATE SEQUENCE public.citas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.citas_id_seq;
       public          postgres    false    209            �           0    0    citas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.citas_id_seq OWNED BY public.citas.id;
          public          postgres    false    208            �            1259    24598    clientes    TABLE     }  CREATE TABLE public.clientes (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido_paterno character varying(50) NOT NULL,
    apellido_materno character varying(50) NOT NULL,
    rut character varying(50) NOT NULL,
    telefono character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �           0    0    TABLE clientes    COMMENT     K   COMMENT ON TABLE public.clientes IS 'Tabla para los clientes del sistema';
          public          postgres    false    205            �            1259    24596    clientes_id_seq    SEQUENCE     x   CREATE SEQUENCE public.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public          postgres    false    205            �           0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public          postgres    false    204            �            1259    24606 	   consultas    TABLE       CREATE TABLE public.consultas (
    id bigint NOT NULL,
    motivo_consulta character varying(100) NOT NULL,
    tratamiento character varying(100) NOT NULL,
    prestaciones character varying(100) NOT NULL,
    fecha_consulta character varying(20) NOT NULL
);
    DROP TABLE public.consultas;
       public         heap    postgres    false            �           0    0    TABLE consultas    COMMENT     B   COMMENT ON TABLE public.consultas IS 'Tabla para las consultas ';
          public          postgres    false    207            �            1259    24604    consultas_id_seq    SEQUENCE     y   CREATE SEQUENCE public.consultas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.consultas_id_seq;
       public          postgres    false    207            �           0    0    consultas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.consultas_id_seq OWNED BY public.consultas.id;
          public          postgres    false    206            �            1259    24590    mascotas    TABLE     �   CREATE TABLE public.mascotas (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    fecha character varying(50) NOT NULL,
    raza character varying(50) NOT NULL,
    especie character varying(50) NOT NULL
);
    DROP TABLE public.mascotas;
       public         heap    postgres    false            �            1259    24588    mascotas_id_seq    SEQUENCE     x   CREATE SEQUENCE public.mascotas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mascotas_id_seq;
       public          postgres    false    203            �           0    0    mascotas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mascotas_id_seq OWNED BY public.mascotas.id;
          public          postgres    false    202            �            1259    24579    usuarios    TABLE       CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido_paterno character varying(50) NOT NULL,
    apellido_materno character varying(50) NOT NULL,
    rut character varying(15) NOT NULL,
    direccion character varying(80) NOT NULL,
    telefono character varying(25) NOT NULL,
    correo character varying(100) NOT NULL,
    cargo character varying(15) NOT NULL,
    estado boolean NOT NULL,
    usuario character varying(100) NOT NULL,
    clave character varying(100) NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    24577    usuarios_id_seq    SEQUENCE     x   CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    201            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    200            @           2604    24617    citas id    DEFAULT     d   ALTER TABLE ONLY public.citas ALTER COLUMN id SET DEFAULT nextval('public.citas_id_seq'::regclass);
 7   ALTER TABLE public.citas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            >           2604    24601    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            ?           2604    24609    consultas id    DEFAULT     l   ALTER TABLE ONLY public.consultas ALTER COLUMN id SET DEFAULT nextval('public.consultas_id_seq'::regclass);
 ;   ALTER TABLE public.consultas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            =           2604    24593    mascotas id    DEFAULT     j   ALTER TABLE ONLY public.mascotas ALTER COLUMN id SET DEFAULT nextval('public.mascotas_id_seq'::regclass);
 :   ALTER TABLE public.mascotas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            <           2604    24582    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    24614    citas 
   TABLE DATA           2   COPY public.citas (id, nombre, fecha) FROM stdin;
    public          postgres    false    209   �-       �          0    24598    clientes 
   TABLE DATA           s   COPY public.clientes (id, nombre, apellido_paterno, apellido_materno, rut, telefono, direccion, email) FROM stdin;
    public          postgres    false    205   �-       �          0    24606 	   consultas 
   TABLE DATA           c   COPY public.consultas (id, motivo_consulta, tratamiento, prestaciones, fecha_consulta) FROM stdin;
    public          postgres    false    207   �.       �          0    24590    mascotas 
   TABLE DATA           D   COPY public.mascotas (id, nombre, fecha, raza, especie) FROM stdin;
    public          postgres    false    203   T/       �          0    24579    usuarios 
   TABLE DATA           �   COPY public.usuarios (id, nombre, apellido_paterno, apellido_materno, rut, direccion, telefono, correo, cargo, estado, usuario, clave) FROM stdin;
    public          postgres    false    201   �/       �           0    0    citas_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.citas_id_seq', 6, true);
          public          postgres    false    208            �           0    0    clientes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.clientes_id_seq', 21, true);
          public          postgres    false    204            �           0    0    consultas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.consultas_id_seq', 9, true);
          public          postgres    false    206            �           0    0    mascotas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mascotas_id_seq', 24, true);
          public          postgres    false    202            �           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 4, true);
          public          postgres    false    200            J           2606    24622    citas citas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.citas
    ADD CONSTRAINT citas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.citas DROP CONSTRAINT citas_pkey;
       public            postgres    false    209            F           2606    24603    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    205            H           2606    24611    consultas consultas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_pkey;
       public            postgres    false    207            D           2606    24595    mascotas mascotas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.mascotas DROP CONSTRAINT mascotas_pkey;
       public            postgres    false    203            B           2606    24584    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    201            �   K   x�3��*M�K�4202�54�54�2��M,�Dp��	�sqz%�e������30�2!�7������ e�*      �   �   x�U�M�0�ׯ��Ķ��\�� n: �`R�&��R��������uK���L�H���(�uUy��D�xZ8��;���Qh<V�Ԙ�b&C�َ�`vw<���f��:a$7Ё�/���R�@ֆ܎��s?�`#*q	���v/v}�TP���v�q�/n<���g��rK�V�O�      �   �   x���K�0D��)r J�R'a�f�XQ�WN��X���~[V3��yG'��"�(<̒Hy�,�jW�sm�o{g���1rJb4
y����l�Ǝ�����R74�o��n)��U�,$��K���@�:�<�K�7�)��Ƙ��I�      �   @   x�3��/)��42�,H,.�/�,H-*��2���,.������S��9�K�0�+F��� Vk      �   �   x�]NI�0<O^�Td�r�p���$)D�"%)����r���=��H����;�B*ݴ]�!�9���]껶�J
^�j�LX�J�/H���ߙB4���š ��8N�O~�1�K�uc7�&�J�������?Q�K%� d����>�s������K�k�{��K�     