import grails.test.AbstractCliTestCase

class CargarValoresTests extends AbstractCliTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCargarValores() {

        execute(["cargar-valores"])

        assertEquals 0, waitForProcess()
        verifyHeader()
    }
}
