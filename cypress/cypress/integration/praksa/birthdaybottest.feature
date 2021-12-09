/// <reference types="cypress" />

const cookie = 'eyJwYXNzcG9ydCI6eyJ1c2VyIjp7InByb3ZpZGVyIjoiZ29vZ2xlIiwic3ViIjoiMTA5NTc4NTM0OTE2OTc1MDkyNDIzIiwiaWQiOiIxMDk1Nzg1MzQ5MTY5NzUwOTI0MjMiLCJkaXNwbGF5TmFtZSI6IkZhcmlzIEJla3RhcyIsIm5hbWUiOnsiZ2l2ZW5OYW1lIjoiRmFyaXMgIiwiZmFtaWx5TmFtZSI6IkJla3RhcyJ9LCJnaXZlbl9uYW1lIjoiRmFyaXMgIiwiZmFtaWx5X25hbWUiOiJCZWt0YXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwidmVyaWZpZWQiOnRydWUsImxhbmd1YWdlIjoiZW4iLCJlbWFpbCI6ImZhcmlzLmJla3Rhc0BtaW5pc3RyeW9mcHJvZ3JhbW1pbmcuY29tIiwiZW1haWxzIjpbeyJ2YWx1ZSI6ImZhcmlzLmJla3Rhc0BtaW5pc3RyeW9mcHJvZ3JhbW1pbmcuY29tIiwidHlwZSI6ImFjY291bnQifV0sInBob3RvcyI6W3sidmFsdWUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQVRYQUp4UTZ0QkZrUXI3Rk53N1dYMmpvX3hEVWRMWm5ERDNDVm05R2RjTj1zOTYtYyIsInR5cGUiOiJkZWZhdWx0In1dLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKeFE2dEJGa1FyN0ZOdzdXWDJqb194RFVkTFpuREQzQ1ZtOUdkY049czk2LWMiLCJfcmF3Ijoie1xuICBcInN1YlwiOiBcIjEwOTU3ODUzNDkxNjk3NTA5MjQyM1wiLFxuICBcIm5hbWVcIjogXCJGYXJpcyBCZWt0YXNcIixcbiAgXCJnaXZlbl9uYW1lXCI6IFwiRmFyaXMgXCIsXG4gIFwiZmFtaWx5X25hbWVcIjogXCJCZWt0YXNcIixcbiAgXCJwaWN0dXJlXCI6IFwiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKeFE2dEJGa1FyN0ZOdzdXWDJqb194RFVkTFpuREQzQ1ZtOUdkY05cXHUwMDNkczk2LWNcIixcbiAgXCJlbWFpbFwiOiBcImZhcmlzLmJla3Rhc0BtaW5pc3RyeW9mcHJvZ3JhbW1pbmcuY29tXCIsXG4gIFwiZW1haWxfdmVyaWZpZWRcIjogdHJ1ZSxcbiAgXCJsb2NhbGVcIjogXCJlblwiLFxuICBcImhkXCI6IFwibWluaXN0cnlvZnByb2dyYW1taW5nLmNvbVwiXG59IiwiX2pzb24iOnsic3ViIjoiMTA5NTc4NTM0OTE2OTc1MDkyNDIzIiwibmFtZSI6IkZhcmlzIEJla3RhcyIsImdpdmVuX25hbWUiOiJGYXJpcyAiLCJmYW1pbHlfbmFtZSI6IkJla3RhcyIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQVRYQUp4UTZ0QkZrUXI3Rk53N1dYMmpvX3hEVWRMWm5ERDNDVm05R2RjTj1zOTYtYyIsImVtYWlsIjoiZmFyaXMuYmVrdGFzQG1pbmlzdHJ5b2Zwcm9ncmFtbWluZy5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibG9jYWxlIjoiZW4iLCJoZCI6Im1pbmlzdHJ5b2Zwcm9ncmFtbWluZy5jb20iLCJkb21haW4iOiJtaW5pc3RyeW9mcHJvZ3JhbW1pbmcuY29tIn19fX0='


describe('Login works fine', () => {
beforeEach(() => {

cy.visit('https://birthdaybot.mop.ba/')
cy.viewport(1280, 720)

cy.then(() => {
cy.setCookie('login-session', cookie)
cy.setCookie('login-session.sig', 'W_Qc4Waz2MsDK0INF1mn-cbFvKY')
cy.setCookie('user', '109578534916975092423')

})
})

describe('Happy board navbar works fine', () => {
it('Happy Board page works fine', () => {
/*cy.visit('https://birthdaybot.mop.ba/')
cy.viewport(1280, 720)

cy.then(() => {
cy.setCookie('login-session', cookie)
cy.setCookie('login-session.sig', 'W_Qc4Waz2MsDK0INF1mn-cbFvKY')
cy.setCookie('user', '109578534916975092423')
}) */

cy.visit('https://birthdaybot.mop.ba/happyboard')

cy.contains('Faris Bektas').should('exist')
cy.contains('Reminders').should('exist')
cy.contains('Birthday Cards').should('exist')
cy.contains('Admins').should('exist')


cy.url().should('include', '/happyboard')

cy.contains('Upcoming').click()
cy.contains('NAME AND SURNAME').should('exist')
cy.contains('Employees').click()
cy.contains('Partners').click()
cy.contains('Add New Partner').should('exist')
cy.contains('Archived').click()

cy.contains('Upcoming').click()
cy.contains('sync').click()

// cy.get('[class=search-input', { timeout: 5000 }).type('Mirna')

cy.get('[class=filter-btn').click()
cy.get('[class=month-select]').select('July')
cy.get('[class=apply-filter').click()
})

it('Reminders page works fine', () => {
cy.visit('https://birthdaybot.mop.ba/reminders')

cy.url().should('include', '/reminders')

cy.contains('Add New Reminder').click()
cy.get('[name=days', { timeout: 5000 }).type(5)
cy.get('[class=time]', { timeout: 5000 }).select('10:00')
cy.contains('Submit').click()

cy.contains('15 day').should('exist')

})

it('Birthday Cards page works fine', () => {
cy.visit('https://birthdaybot.mop.ba/bdaycard')

cy.url().should('include', '/bdaycard')

cy.contains('Birthday Cards').should('be.visible')

cy.contains('Add New Card').click()
cy.get('[name=message', { timeout: 5000 }).type("Test2 [user]")
cy.contains('Submit').click()

cy.contains('GIFs').click()
cy.get('[class=add-btn]').should('exist')

})

it('Adding bday card should fail', () => {
cy.visit('https://birthdaybot.mop.ba/bdaycard')

cy.contains('Add New Card').click()
cy.get('[name=message', { timeout: 5000 }).type("Test2")
cy.contains('Submit').click()

})

it('Adding birthday GIF should WORK, but does not', () => {
cy.visit('https://birthdaybot.mop.ba/bdaycard')

cy.url().should('include', '/bdaycard')

cy.contains('GIFs').click()
cy.get('[class=add-btn]').click().should('exist')
cy.get('[name=gif]', { timeout: 5000 }).type('https://tenor.com/bGMPL.gif')
cy.contains('Submit').click()

})


it('Adding birthday GIF should fail', () => {
cy.visit('https://birthdaybot.mop.ba/bdaycard')

cy.url().should('include', '/bdaycard')

cy.contains('GIFs').click()
cy.get('[class=add-btn]').click().should('exist')
cy.get('[name=gif]', { timeout: 5000 }).type('bday gif')
cy.contains('Submit').click()

})

it('Admins page works fine', () => {
cy.visit('https://birthdaybot.mop.ba/admins')

cy.url().should('include', '/admins ')

cy.contains('Admin Panel').should('exist')
cy.contains('Welcome to the Admin group of Birthday bot!').should('be.visible')
cy.contains('Faris').should('exist')

cy.contains('Add New Admin').click()
cy.get('[name=firstName', { timeout: 3000 }).type("TestIme")
cy.get('[name=lastName', { timeout: 3000 }).type("TestPrezime")
cy.get('[name=email', { timeout: 3000 }).type("test@ministryofprogramming.com")
cy.contains('Submit').click()

cy.contains('TestIme').should('exist')

})

it('Adding admin should fail', () => {
cy.visit('https://birthdaybot.mop.ba/admins')

cy.url().should('include', '/admins ')

cy.contains('Add New Admin').click()
cy.get('[name=firstName', { timeout: 2000 }).type("TestIme")
cy.get('[name=lastName', { timeout: 2000 }).type("TestPrezime")
cy.get('[name=email', { timeout: 2000 }).type("test@test.com")
cy.contains('Submit').click()

})
})
})
