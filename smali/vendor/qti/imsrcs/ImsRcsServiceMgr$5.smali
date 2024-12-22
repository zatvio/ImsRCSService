.class Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;
.super Ljava/lang/Object;
.source "ImsRcsServiceMgr.java"

# interfaces
.implements Lvendor/qti/ims/factory/V2_0/IImsFactory$createRcsSipTransportServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlRcsSipTransport_1_0(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

.field final synthetic val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 612
    iput-object p1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iput-object p2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/ims/rcssip/V1_0/ISipTransportService;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "iSipTransportService"    # Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;

    .line 617
    nop

    .line 618
    invoke-static {p1}, Lvendor/qti/ims/factory/V2_0/IImsFactory$StatusCode;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v1, "ImsRcsServiceMgr V1.0 ISipTransportService status: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-nez p1, :cond_0

    .line 621
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$200(Lvendor/qti/imsrcs/ImsRcsServiceMgr;II)V

    .line 622
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$300(Lvendor/qti/imsrcs/ImsRcsServiceMgr;IZ)V

    .line 623
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$5;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v0, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->setHidlSipTransportService(Lvendor/qti/ims/rcssip/V1_0/ISipTransportService;)V

    goto :goto_0

    .line 625
    :cond_0
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, " V1.0 createRcsSipTransportService failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_0
    return-void
.end method
