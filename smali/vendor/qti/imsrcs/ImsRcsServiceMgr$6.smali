.class Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;
.super Ljava/lang/Object;
.source "ImsRcsServiceMgr.java"

# interfaces
.implements Lvendor/qti/ims/factory/V2_1/IImsFactory$createRcsSipTransportService_1_1Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlRcsSipTransport_1_1(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V
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

    .line 656
    iput-object p1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iput-object p2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/ims/rcssip/V1_1/ISipTransportService;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "iSipTransportService"    # Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;

    .line 661
    nop

    .line 662
    invoke-static {p1}, Lvendor/qti/ims/factory/V2_0/IImsFactory$StatusCode;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 661
    const-string v1, "ImsRcsServiceMgr V1.1 ISipTransportService status: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 664
    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$200(Lvendor/qti/imsrcs/ImsRcsServiceMgr;II)V

    .line 665
    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v2

    invoke-static {v1, v2, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$300(Lvendor/qti/imsrcs/ImsRcsServiceMgr;IZ)V

    .line 666
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v0, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->setHidlSipTransportService(Lvendor/qti/ims/rcssip/V1_1/ISipTransportService;)V

    goto :goto_2

    .line 668
    :cond_0
    const-string v1, "ImsRcsServiceMgr"

    if-ne p1, v0, :cond_3

    .line 669
    const-string v2, " V1.1 ISipTransportService status: FAIL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v3}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$400(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)I

    move-result v2

    .line 671
    .local v2, "retryCount":I
    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v3, v3, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->MAX_RETRY_COUNT:I

    if-ge v2, v3, :cond_1

    .line 672
    add-int/2addr v2, v0

    .line 673
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v1

    invoke-static {v0, v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$200(Lvendor/qti/imsrcs/ImsRcsServiceMgr;II)V

    .line 674
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    .line 675
    invoke-virtual {v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->getSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$400(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    const-string v1, "ImsRcsServiceMgr V1.1 ISipTransportService retry Attempt: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 682
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeRcsSipTransportService(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    goto :goto_1

    .line 684
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v0, v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->MAX_RETRY_COUNT:I

    if-lt v2, v0, :cond_2

    .line 685
    const-string v0, " V1.1 ISipTransportService MAX_RETRY_COUNT reached"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v0, " createRcsSipTransportService failed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v2    # "retryCount":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 689
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 690
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$6;->val$p:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$500(Lvendor/qti/imsrcs/ImsRcsServiceMgr;Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;)V

    goto :goto_2

    .line 693
    :cond_4
    const-string v0, " V1.1 createRcsSipTransportService failed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_2
    return-void
.end method
