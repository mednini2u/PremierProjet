
package fr.polytech;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the fr.polytech package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _AjouterClient_QNAME = new QName("http://www.polytech.fr", "ajouterClient");
    private final static QName _Client_QNAME = new QName("http://www.polytech.fr", "client");
    private final static QName _AfficherClient_QNAME = new QName("http://www.polytech.fr", "afficherClient");
    private final static QName _SeConnecterClient_QNAME = new QName("http://www.polytech.fr", "seConnecterClient");
    private final static QName _AfficherClientResponse_QNAME = new QName("http://www.polytech.fr", "afficherClientResponse");
    private final static QName _HashPasswordClient_QNAME = new QName("http://www.polytech.fr", "hashPasswordClient");
    private final static QName _LogClient_QNAME = new QName("http://www.polytech.fr", "logClient");
    private final static QName _AjouterClientResponse_QNAME = new QName("http://www.polytech.fr", "ajouterClientResponse");
    private final static QName _ExistClient_QNAME = new QName("http://www.polytech.fr", "existClient");
    private final static QName _HashPasswordClientResponse_QNAME = new QName("http://www.polytech.fr", "hashPasswordClientResponse");
    private final static QName _LogClientResponse_QNAME = new QName("http://www.polytech.fr", "logClientResponse");
    private final static QName _ExistClientResponse_QNAME = new QName("http://www.polytech.fr", "existClientResponse");
    private final static QName _SeConnecterClientResponse_QNAME = new QName("http://www.polytech.fr", "seConnecterClientResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: fr.polytech
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link SeConnecterClientResponse }
     * 
     */
    public SeConnecterClientResponse createSeConnecterClientResponse() {
        return new SeConnecterClientResponse();
    }

    /**
     * Create an instance of {@link ExistClientResponse }
     * 
     */
    public ExistClientResponse createExistClientResponse() {
        return new ExistClientResponse();
    }

    /**
     * Create an instance of {@link ExistClient }
     * 
     */
    public ExistClient createExistClient() {
        return new ExistClient();
    }

    /**
     * Create an instance of {@link LogClientResponse }
     * 
     */
    public LogClientResponse createLogClientResponse() {
        return new LogClientResponse();
    }

    /**
     * Create an instance of {@link HashPasswordClientResponse }
     * 
     */
    public HashPasswordClientResponse createHashPasswordClientResponse() {
        return new HashPasswordClientResponse();
    }

    /**
     * Create an instance of {@link HashPasswordClient }
     * 
     */
    public HashPasswordClient createHashPasswordClient() {
        return new HashPasswordClient();
    }

    /**
     * Create an instance of {@link AfficherClientResponse }
     * 
     */
    public AfficherClientResponse createAfficherClientResponse() {
        return new AfficherClientResponse();
    }

    /**
     * Create an instance of {@link LogClient }
     * 
     */
    public LogClient createLogClient() {
        return new LogClient();
    }

    /**
     * Create an instance of {@link AjouterClientResponse }
     * 
     */
    public AjouterClientResponse createAjouterClientResponse() {
        return new AjouterClientResponse();
    }

    /**
     * Create an instance of {@link AjouterClient }
     * 
     */
    public AjouterClient createAjouterClient() {
        return new AjouterClient();
    }

    /**
     * Create an instance of {@link Client }
     * 
     */
    public Client createClient() {
        return new Client();
    }

    /**
     * Create an instance of {@link SeConnecterClient }
     * 
     */
    public SeConnecterClient createSeConnecterClient() {
        return new SeConnecterClient();
    }

    /**
     * Create an instance of {@link AfficherClient }
     * 
     */
    public AfficherClient createAfficherClient() {
        return new AfficherClient();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AjouterClient }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "ajouterClient")
    public JAXBElement<AjouterClient> createAjouterClient(AjouterClient value) {
        return new JAXBElement<AjouterClient>(_AjouterClient_QNAME, AjouterClient.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Client }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "client")
    public JAXBElement<Client> createClient(Client value) {
        return new JAXBElement<Client>(_Client_QNAME, Client.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AfficherClient }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "afficherClient")
    public JAXBElement<AfficherClient> createAfficherClient(AfficherClient value) {
        return new JAXBElement<AfficherClient>(_AfficherClient_QNAME, AfficherClient.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SeConnecterClient }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "seConnecterClient")
    public JAXBElement<SeConnecterClient> createSeConnecterClient(SeConnecterClient value) {
        return new JAXBElement<SeConnecterClient>(_SeConnecterClient_QNAME, SeConnecterClient.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AfficherClientResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "afficherClientResponse")
    public JAXBElement<AfficherClientResponse> createAfficherClientResponse(AfficherClientResponse value) {
        return new JAXBElement<AfficherClientResponse>(_AfficherClientResponse_QNAME, AfficherClientResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HashPasswordClient }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "hashPasswordClient")
    public JAXBElement<HashPasswordClient> createHashPasswordClient(HashPasswordClient value) {
        return new JAXBElement<HashPasswordClient>(_HashPasswordClient_QNAME, HashPasswordClient.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LogClient }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "logClient")
    public JAXBElement<LogClient> createLogClient(LogClient value) {
        return new JAXBElement<LogClient>(_LogClient_QNAME, LogClient.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AjouterClientResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "ajouterClientResponse")
    public JAXBElement<AjouterClientResponse> createAjouterClientResponse(AjouterClientResponse value) {
        return new JAXBElement<AjouterClientResponse>(_AjouterClientResponse_QNAME, AjouterClientResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ExistClient }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "existClient")
    public JAXBElement<ExistClient> createExistClient(ExistClient value) {
        return new JAXBElement<ExistClient>(_ExistClient_QNAME, ExistClient.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HashPasswordClientResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "hashPasswordClientResponse")
    public JAXBElement<HashPasswordClientResponse> createHashPasswordClientResponse(HashPasswordClientResponse value) {
        return new JAXBElement<HashPasswordClientResponse>(_HashPasswordClientResponse_QNAME, HashPasswordClientResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LogClientResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "logClientResponse")
    public JAXBElement<LogClientResponse> createLogClientResponse(LogClientResponse value) {
        return new JAXBElement<LogClientResponse>(_LogClientResponse_QNAME, LogClientResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ExistClientResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "existClientResponse")
    public JAXBElement<ExistClientResponse> createExistClientResponse(ExistClientResponse value) {
        return new JAXBElement<ExistClientResponse>(_ExistClientResponse_QNAME, ExistClientResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SeConnecterClientResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "seConnecterClientResponse")
    public JAXBElement<SeConnecterClientResponse> createSeConnecterClientResponse(SeConnecterClientResponse value) {
        return new JAXBElement<SeConnecterClientResponse>(_SeConnecterClientResponse_QNAME, SeConnecterClientResponse.class, null, value);
    }

}
