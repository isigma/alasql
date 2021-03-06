SELECT *
FROM (SELECT TOP (3) orderid, customerid
      FROM dbo.Orders
      ORDER BY orderid DESC) AS D;

ASSERT @[{"orderid":7,"customerid":NULL},
{"orderid":6,"customerid":"MRPHS"},
{"orderid":5,"customerid":"KRLOS"}];