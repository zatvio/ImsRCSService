.class Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;
.super Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener$Stub;
.source "SipTransportHidlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipTransportListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/rcssip/V1_0/ISipTransportListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$1;

    .line 334
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public onCommandStatus(II)V
    .locals 2
    .param p1, "cmdStatus"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandStatus received with userdata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportHidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleCmdStatus(II)V

    .line 357
    :cond_0
    return-void
.end method

.method public onConfigurationChange(Lvendor/qti/ims/rcssip/V1_0/configData;)V
    .locals 1
    .param p1, "configData"    # Lvendor/qti/ims/rcssip/V1_0/configData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleConfigurationChanged(Lvendor/qti/ims/rcssip/V1_0/configData;)V

    .line 348
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

    .line 338
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$SipTransportListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->mSipTransportEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->handleServiceStatus(I)V

    .line 340
    :cond_0
    return-void
.end method
