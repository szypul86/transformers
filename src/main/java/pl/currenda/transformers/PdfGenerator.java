package pl.currenda.transformers;

import io.woo.htmltopdf.HtmlToPdf;
import io.woo.htmltopdf.HtmlToPdfObject;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import javax.xml.XMLConstants;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

@Service
@Log4j2
public class PdfGenerator {

    /*
     *  tutaj zmieniamy ścieżki w zależnośći od rodzaju pdfa jaki chcemy otrzymać
     */
    private final static String XML_INPUT_PATH = "/xml/economic-information_nip.xml";
    private final static String XSLT_INPUT_PATH = "/xslt/krd_economic_information_NEW.xslt";

    public byte[] getPdfFromXml() {
        try {
            String xml = getXmlStringSource();
            ByteArrayOutputStream htmlFile = transformXmlToHtml(xml.getBytes(StandardCharsets.UTF_8));
            String html = htmlFile.toString(StandardCharsets.UTF_8);
            return getPdfFromXhtmlDocument(html);
        } catch (TransformerException | IOException e) {
            log.error("Transform xml to pdf failed");
            return null;
        }
    }

    private byte[] getPdfFromXhtmlDocument(String html) throws IOException {
        InputStream is = HtmlToPdf.create()
                .object(HtmlToPdfObject.forHtml(html))
                .convert();
        return is.readAllBytes();
    }

    private ByteArrayOutputStream transformXmlToHtml(byte[] xml) throws TransformerException {
        TransformerFactory tFactory = TransformerFactory.newInstance();
        tFactory.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);

        Source xslt = getXslSource();
        Source xmlSource = new StreamSource(new ByteArrayInputStream(xml));

        ByteArrayOutputStream htmlFile = new ByteArrayOutputStream();
        Transformer transform = tFactory.newTransformer(xslt);
        transform.setOutputProperty(OutputKeys.INDENT, "yes");
        transform.transform(xmlSource, new StreamResult(htmlFile));

        return htmlFile;
    }

    private StreamSource getXslSource() {
        return new StreamSource(getClass()
                .getResourceAsStream(XSLT_INPUT_PATH));
    }

    private String getXmlStringSource() throws IOException {
        StreamSource xmlSource = new StreamSource(getClass().getResourceAsStream(XML_INPUT_PATH));
        byte[] bytes = xmlSource.getInputStream().readAllBytes();
        return new String(bytes, StandardCharsets.UTF_8);
    }
}
