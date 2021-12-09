/// <reference types="cypress" />


describe('Loading website', () => {
    beforeEach(() => {

        cy.visit('https://www.demoblaze.com/cart.html')
        cy.viewport(1280, 720)
    })
})

describe('Website works as expected', () => {
    it('Website should load UI', () => {
        cy.url().should('include', '/cart.html')
        cy.contains('Products').should('exist')
        cy.get('[class=btn btn-success]').should('exist')
        cy.contains('Home').should('exist')
    })

    it('Products should be in stock', () => {
        cy.contains('Iphone 6 32gb').should('exist')
        cy.contains('790').should('exist')
    })

    it('Placing an order works fine', () => {
        cy.get('[class=btn btn-success]').click()
        // Since validation is implemented for Name and Credit Card, we will create test cases for both (with and without validation)
        cy.get('[id=name]').type('Anes')
        cy.get('[id=card]').type('123456789')
        // We will mostly use selectors as "id" "class" "name" since UI texts (contains) changes frequently
        cy.get('[class=btn btn-primary]').click()
        cy.get('[class=confirm btn btn-lg btn-primary]').contains('OK').click()
    })

    it('Placing an order does not work', () => {
        cy.get('[class=btn btn-success]').click()
        cy.get('[id=card]').type('123456789')
        cy.get('[class=btn btn-primary]').click()
            .then(() => {
                expect(stub.getCall(0)).to.be.calledWith('Please fill out Name and Creditcard.')
            })
        //cy.on('window:alert', (str) => {
        //expect(str).to.equal(`This is an alert box!`)
        // })
    })

    // Will repeat IT of placing an order with same credentials === should work

    it('Placing an order works fine', () => {
        cy.get('[class=btn btn-success]').click()
        // Since validation is implemented for Name and Credit Card, we will create test cases for both (with and without validation)
        cy.get('[id=name]').type('Anes')
        cy.get('[id=card]').type('123456789')
        // We will mostly use selectors as "id" "class" "name" since UI texts (contains) changes frequently
        cy.get('[class=btn btn-primary]').click()
        cy.get('[class=confirm btn btn-lg btn-primary]').contains('OK').click()
    })

    it('Footer should exist', () => {
        cy.contains('About Us').should('exist')
        cy.contains('Address: 2390 El Camino Real').should('exist')
        cy.contains('Place Order').should('have.class')
        cy.contains('Copyright © Product Store 2017').should('have.class')
    })
})
