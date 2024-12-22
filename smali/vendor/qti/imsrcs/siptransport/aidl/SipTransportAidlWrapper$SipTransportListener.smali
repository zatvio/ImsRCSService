.class Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;
.super Lvendor/qti/ims/rcssipaidlservice/ISipTransportListener$Stub;
.source "SipTransportAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipTransportListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/rcssipaidlservice/ISipTransportListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$1;

    .line 169
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;-><init>(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)V

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, "c77ca029456b5502d528cb7695fdcb5698c576da"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onCommandStatus(II)V
    .locals 2
    .param p1, "cmdStatus"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandStatus received with userdata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportAidlWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->access$500(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->access$600(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleCmdStatus(II)V

    .line 200
    :cond_0
    return-void
.end method

.method public onConfigurationChange(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V
    .locals 1
    .param p1, "pConfigData"    # Lvendor/qti/ims/rcssipaidlservice/ConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->access$300(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->access$400(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleConfigurationChanged(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    iput p1, v0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->mServiceStatus:I

    .line 180
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->access$100(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;->access$200(Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleServiceStatus(I)V

    .line 182
    :cond_0
    return-void
.end method
