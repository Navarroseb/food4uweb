-- Insumos de Food4U, consolidados desde Ensaladas_ideas.xlsx y Costos_pesto.xlsx.
-- Un solo precio por insumo. Cuando el mismo insumo tenia varios precios, se uso este orden:
--   1) planilla de pestos (la mas reciente)
--   2) lista de precios de La Vega
--   3) lista de precios de Jumbo
--   4) el precio mas usado en las recetas
-- factor_desecho: el FD mas usado en tus recetas (cada receta podra ajustarlo despues).

insert into public.insumos (nombre, categoria, unidad, costo_unitario, factor_desecho, proveedor) values
  -- Verduras, frutas y hierbas
  ('Lechuga',               'ingrediente', 'kg',      2000, 1.33, 'La Vega'),
  ('Berros',                'ingrediente', 'kg',      4000, 1,    'La Vega'),
  ('Tomate',                'ingrediente', 'kg',      1000, 1.05, null),
  ('Apio',                  'ingrediente', 'kg',      1000, 1.58, 'La Vega'),
  ('Piña',                  'ingrediente', 'kg',      2000, 1,    'La Vega'),
  ('Mango',                 'ingrediente', 'kg',      2000, 1.5,  'La Vega'),
  ('Pepino',                'ingrediente', 'kg',       800, 1.43, 'La Vega'),
  ('Champiñones',           'ingrediente', 'kg',      3000, 1,    'La Vega'),
  ('Choclo',                'ingrediente', 'kg',      1350, 1,    'La Vega'),
  ('Zanahoria',             'ingrediente', 'kg',       500, 1.59, 'La Vega'),
  ('Pimentón rojo',         'ingrediente', 'kg',      1000, 1.35, 'La Vega'),
  ('Pera',                  'ingrediente', 'kg',      1000, 1.35, 'La Vega'),
  ('Palta',                 'ingrediente', 'kg',      2600, 1.59, null),
  ('Limón',                 'ingrediente', 'kg',      2000, 1.56, null),
  ('Ajo',                   'ingrediente', 'kg',      3350, 1.05, null),
  ('Albahaca',              'ingrediente', 'kg',      3000, 1.1,  null),
  ('Perejil',               'ingrediente', 'kg',      2000, 1,    'La Vega'),
  ('Cilantro',              'ingrediente', 'kg',      5400, 1,    null),
  ('Orégano',               'ingrediente', 'kg',     26000, 1,    null),

  -- Proteínas y lácteos
  ('Pollo',                 'ingrediente', 'kg',      3200, 1,    'La Vega'),
  ('Salmón',                'ingrediente', 'kg',     10000, 1,    'La Vega'),
  ('Camarón',               'ingrediente', 'kg',      8000, 1,    'La Vega'),
  ('Kanikama',              'ingrediente', 'kg',     10000, 1,    'La Vega'),
  ('Huevo',                 'ingrediente', 'kg',      1500, 1,    'La Vega'),
  ('Tocino',                'ingrediente', 'kg',      8000, 1,    'La Vega'),
  ('Queso fresco',          'ingrediente', 'kg',      3500, 1,    'La Vega'),
  ('Queso parmesano',       'ingrediente', 'kg',     12000, 1,    null),
  ('Queso azul',            'ingrediente', 'kg',     22990, 1,    'Jumbo'),
  ('Yogur griego',          'ingrediente', 'kg',      2433, 1,    null),
  ('Mantequilla sin sal',   'ingrediente', 'kg',      7560, 1,    null),

  -- Granos, frutos secos y panificados
  ('Quinoa',                'ingrediente', 'kg',      3000, 1,    'La Vega'),
  ('Aceitunas negras',      'ingrediente', 'kg',      4000, 1,    'La Vega'),
  ('Maní',                  'ingrediente', 'kg',      2500, 1,    'La Vega'),
  ('Nueces',                'ingrediente', 'kg',      8800, 1,    null),
  ('Porotos negros',        'ingrediente', 'kg',      2600, 1,    null),
  ('Pan de molde',          'ingrediente', 'kg',      3082, 1,    null),
  ('Tortilla de trigo 30 cm (Pancho Villa)', 'ingrediente', 'unidad', 153, 1, null),
  ('Tortilla de maíz',      'ingrediente', 'kg',      5185, 1,    null),

  -- Aceites, vinagres y condimentos
  ('Aceite de oliva',       'ingrediente', 'l',      13150, 1,    null),
  ('Aceite vegetal',        'ingrediente', 'l',       2750, 1,    null),
  ('Aceite de sésamo',      'ingrediente', 'l',      12400, 1,    null),
  ('Vinagre balsámico',     'ingrediente', 'l',       9380, 1,    null),
  ('Vinagre de manzana',    'ingrediente', 'l',       2100, 1,    null),
  ('Vinagre de arroz',      'ingrediente', 'l',       3150, 1,    null),
  ('Salsa de soya',         'ingrediente', 'l',       3500, 1,    null),
  ('Mayonesa',              'ingrediente', 'l',       2808, 1,    null),
  ('Mostaza Dijon',         'ingrediente', 'kg',      4564, 1,    null),
  ('Anchoas',               'ingrediente', 'kg',     26357, 1,    null),
  ('Azúcar',                'ingrediente', 'kg',      1490, 1,    null),
  ('Sal',                   'ingrediente', 'kg',       900, 1,    null),
  ('Pimienta',              'ingrediente', 'kg',     18000, 1,    null),

  -- Envases (costo por unidad, desde la factura de DPS Chile)
  ('Bowl kraft 1300 cc',    'envase',      'unidad',  115.90, 1, 'DPS Chile'),
  ('Tapa bowl kraft 1300 cc', 'envase',    'unidad',   67.10, 1, 'DPS Chile'),
  ('Cuchillo de madera',    'envase',      'unidad',   18.87, 1, 'DPS Chile'),
  ('Tenedor de madera',     'envase',      'unidad',   18.87, 1, 'DPS Chile'),
  ('Pocillo 2 oz',          'envase',      'unidad',   10.49, 1, 'DPS Chile'),
  ('Tapa pocillo',          'envase',      'unidad',    8.78, 1, 'DPS Chile'),
  ('Servilleta',            'envase',      'unidad',    4.50, 1, null),
  ('Adhesivo',              'envase',      'unidad',   36.00, 1, null),
  ('Frasco de vidrio 130 g', 'envase',     'unidad',  480,    1, null);
