body: SafeArea
(
child: Column(
children: [
Padding(
padding: const EdgeInsets.all(16.0),
child: Image.asset(
'./assets/01_01_2023_winter_e-frequency.png',
fit: BoxFit.cover,
),
),
Image.asset(
'assets/02_01_siren_order.png',
fit: BoxFit.cover,
),
const Padding(
padding: EdgeInsets.all(24.0),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
'Quick Order',
style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.bold,
),
),
Text(
'최근 주문',
style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
),
],
),
),
Padding(
padding: const EdgeInsets.all(24.0),
child: ListView (
scrollDirection: Axis.vertical,
),
),

],
)
,
)
,
);