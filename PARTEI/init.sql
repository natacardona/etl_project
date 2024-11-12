--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Homebrew)
-- Dumped by pg_dump version 14.11 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: actualizar_stock(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.actualizar_stock() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE productos
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.actualizar_stock() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    email character varying(100)
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentos (
    id_departamento integer NOT NULL,
    nombre_departamento character varying(50)
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- Name: detalle_pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_pedidos (
    id_detalle integer NOT NULL,
    id_pedido integer,
    id_producto integer,
    cantidad integer,
    precio_unitario numeric(10,2)
);


ALTER TABLE public.detalle_pedidos OWNER TO postgres;

--
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    fecha_contratacion date,
    salario numeric(10,2),
    id_departamento integer
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    id_pedido integer NOT NULL,
    id_cliente integer,
    fecha_pedido date,
    total numeric(10,2)
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(100),
    precio numeric(10,2),
    stock integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, nombre, apellido, email) FROM stdin;
1	Pedro	Gómez	pedro@email.com
2	Laura	Fernández	laura@email.com
3	Miguel	Torres	miguel@email.com
4	Sofia	Díaz	sofia@email.com
\.


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamentos (id_departamento, nombre_departamento) FROM stdin;
1	Ventas
2	Marketing
3	Recursos Humanos
4	Tecnología
\.


--
-- Data for Name: detalle_pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_pedidos (id_detalle, id_pedido, id_producto, cantidad, precio_unitario) FROM stdin;
1	1	1	2	1200.00
2	1	3	1	300.00
3	2	2	1	800.00
4	3	4	2	250.00
5	3	5	1	50.00
6	4	1	1	1200.00
7	4	2	1	800.00
8	4	5	2	50.00
\.


--
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (id_empleado, nombre, apellido, fecha_contratacion, salario, id_departamento) FROM stdin;
1	Juan	Pérez	2020-01-15	30000.00	1
3	Carlos	Rodríguez	2021-03-10	28000.00	1
4	Ana	Martínez	2018-11-01	40000.00	3
5	Luis	Sánchez	2022-07-05	32000.00	2
6	Elena	López	2023-05-01	33000.00	3
2	María	González	2019-05-20	37000.00	2
\.


--
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (id_pedido, id_cliente, fecha_pedido, total) FROM stdin;
1	1	2023-01-10	2700.00
2	2	2023-02-15	800.00
3	3	2023-03-20	550.00
4	4	2023-04-05	2100.00
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_producto, nombre_producto, precio, stock) FROM stdin;
1	Laptop	1200.00	50
2	Smartphone	800.00	100
3	Tablet	300.00	75
4	Monitor	250.00	30
5	Teclado	50.00	200
\.


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


--
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id_departamento);


--
-- Name: detalle_pedidos detalle_pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_pedidos
    ADD CONSTRAINT detalle_pedidos_pkey PRIMARY KEY (id_detalle);


--
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);


--
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id_pedido);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- Name: idx_detalle_pedidos_pedido_producto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detalle_pedidos_pedido_producto ON public.detalle_pedidos USING btree (id_pedido, id_producto);


--
-- Name: idx_detalle_pedidos_producto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detalle_pedidos_producto ON public.detalle_pedidos USING btree (id_producto);


--
-- Name: idx_pedidos_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_pedidos_fecha ON public.pedidos USING btree (fecha_pedido);


--
-- Name: pedidos trigger_actualizar_stock; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trigger_actualizar_stock AFTER INSERT ON public.pedidos FOR EACH ROW EXECUTE FUNCTION public.actualizar_stock();


--
-- PostgreSQL database dump complete
--

