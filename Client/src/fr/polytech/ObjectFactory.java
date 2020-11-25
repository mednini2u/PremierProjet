
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

    private final static QName _Afficher_QNAME = new QName("http://www.polytech.fr", "afficher");
    private final static QName _AfficherResponse_QNAME = new QName("http://www.polytech.fr", "afficherResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: fr.polytech
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link AfficherResponse }
     * 
     */
    public AfficherResponse createAfficherResponse() {
        return new AfficherResponse();
    }

    /**
     * Create an instance of {@link Afficher }
     * 
     */
    public Afficher createAfficher() {
        return new Afficher();
    }

    /**
     * Create an instance of {@link Terrain }
     * 
     */
    public Terrain createTerrain() {
        return new Terrain();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Afficher }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "afficher")
    public JAXBElement<Afficher> createAfficher(Afficher value) {
        return new JAXBElement<Afficher>(_Afficher_QNAME, Afficher.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AfficherResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.polytech.fr", name = "afficherResponse")
    public JAXBElement<AfficherResponse> createAfficherResponse(AfficherResponse value) {
        return new JAXBElement<AfficherResponse>(_AfficherResponse_QNAME, AfficherResponse.class, null, value);
    }

}
