# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

joaquin = User.create(name: 'Joaquin', last_name: 'Tellez', phone: '111111', password: '222222', address: 'San Carlos 1111')
macarena = User.create(name: 'Macarena', last_name: 'Espinosa', phone: '123456', password: '78910', address: 'Coventry 1934')
maria = User.create(name: 'Maria', last_name: 'Sanchez', phone: '98765', password: '4321', address: 'San Carlos 1112')
ignacio = User.create(name: 'Ignacio', last_name: 'Figueroa', phone: '10101010', password: '21212121', address: 'Some Place 1000')
alfonso = User.create(name: 'Alfonso', last_name: 'Zuniga', phone: '99999', password: '88888', address: 'Camino Otonal 1452')

event_venues = EventVenue.create(name: 'MapisJaus', address: 'Some Place 666', capacity: '200')

mb = Event.create(name: 'Mapis Birthday', description: 'el cumple de la Mapi', start_date: '10/11/2019', event_venue: event_venues)
mc = Event.create(name: 'Mapis Christmas', description: 'La Mapi te invita a esperar al viejito.', start_date: '24/12/2019', event_venue: event_venues)
ms = Event.create(name: 'Mapis Baby Shower', description: 'La Mapi quiere regalos para la bendicion', start_date: '10/03/2020', event_venue: event_venues)

mbt = Ticket.create(event: mb, price: 10000, category: 'terraza')
mbl = Ticket.create(event: mb, price: 15000, category: 'living')
mbc = Ticket.create(event: mb, price: 20000, category: 'cocina')
mca = Ticket.create(event: mc, price: 25000, category: 'arbol')
mcp = Ticket.create(event: mc, price: 30000, category: 'pesebre')
mcc = Ticket.create(event: mc, price: 35000, category: 'cola de mono')
mss = Ticket.create(event: ms, price: 40000, category: 'sala cuna')
msj = Ticket.create(event: ms, price: 45000, category: 'jardin infantil')
msp = Ticket.create(event: ms, price: 50000, category: 'prebasica')

TicketOrder.create(ticket: mbc, amount:1000000 , date: '10/10/2019', user: joaquin)
TicketOrder.create(ticket: mcp, amount:1000 , date: '23/12/2019', user: joaquin)
TicketOrder.create(ticket: msp, amount: 50000, date: '01/03/2019', user: joaquin)
TicketOrder.create(ticket: mbl, amount: 0, date: '01/09/2019', user: macarena)
TicketOrder.create(ticket: mca, amount: 0, date: '24/12/2019', user: macarena)
TicketOrder.create(ticket: msp, amount: 0, date: '10/03/2019', user: macarena)
TicketOrder.create(ticket: mbt, amount: 0, date: '01/07/2019', user: maria)
TicketOrder.create(ticket: mcc, amount: 0, date: '20/12/2019', user: maria)
TicketOrder.create(ticket: msj, amount: 0, date: '01/03/2020', user: maria)
TicketOrder.create(ticket: mbl, amount: 25000, date: '01/10/2019', user: ignacio)
TicketOrder.create(ticket: mcp, amount: 25000, date: '21/12/2019', user: ignacio)
TicketOrder.create(ticket: mss, amount: 30000, date: '20/02/2020', user: ignacio)
TicketOrder.create(ticket: mbt, amount: 10000, date: '21/10/2019', user: alfonso)
TicketOrder.create(ticket: mcp, amount: 40000, date: '19/12/2019', user: alfonso)
TicketOrder.create(ticket: mss, amount: 100000, date: '01/03/2020', user: alfonso)
