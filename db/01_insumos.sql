-- Insumos: todo lo que se compra (ingredientes y envases), con un solo precio vigente.
create table public.insumos (
  id bigint generated always as identity primary key,
  nombre text not null unique,
  categoria text not null check (categoria in ('ingrediente', 'envase')),
  unidad text not null check (unidad in ('kg', 'l', 'unidad')),
  costo_unitario numeric(12, 2) not null check (costo_unitario >= 0),
  factor_desecho numeric(5, 3) not null default 1 check (factor_desecho >= 1),
  proveedor text,
  activo boolean not null default true,
  creado_en timestamptz not null default now()
);

comment on column public.insumos.costo_unitario is 'Lo que se paga por 1 kg, 1 l o 1 unidad, en CLP';
comment on column public.insumos.factor_desecho is 'FD: peso bruto / peso neto. 1 = sin merma';

alter table public.insumos enable row level security;