package Microsoft.Android.LoggingLibrary;

import Ms.Telemetry.CllHeartBeat;
import com.microsoft.telemetry.Data;
import com.microsoft.telemetry.IJsonSerializable;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Snapshot extends Data<CllHeartBeat> implements IJsonSerializable {
    public Snapshot() {
        InitializeFields();
        SetupAttributes();
    }

    @Override // com.microsoft.telemetry.Data, com.microsoft.telemetry.Base
    protected String serializeContent(Writer writer) throws IOException {
        String prefix = super.serializeContent(writer);
        return prefix;
    }

    @Override // com.microsoft.telemetry.Data
    public void SetupAttributes() {
        this.Attributes.put("Description", "Android's Client Telemetry Snapshot");
    }

    @Override // com.microsoft.telemetry.Data, com.microsoft.telemetry.Base
    protected void InitializeFields() {
        this.QualifiedName = "Microsoft.Android.LoggingLibrary.Snapshot";
    }
}
