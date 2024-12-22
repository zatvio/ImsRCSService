.class Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;
.super Ljava/lang/Object;
.source "ImsRcsServiceMgr.java"

# interfaces
.implements Lvendor/qti/ims/factory/V2_2/IImsFactory$createPresenceService_1_2Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getHidlPresenceService_1_2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 847
    iput-object p1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iput p2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/ims/rcsuce/V1_2/IPresenceService;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "iPresenceService"    # Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;

    .line 852
    const-string v0, "ImsRcsServiceMgr V1.2 IPresenceService status: "

    invoke-static {p1}, Lvendor/qti/ims/factory/V2_0/IImsFactory$StatusCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 854
    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->val$slotId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$700(Lvendor/qti/imsrcs/ImsRcsServiceMgr;II)V

    .line 855
    iget-object v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->val$slotId:I

    invoke-static {v1, v2, v0}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$800(Lvendor/qti/imsrcs/ImsRcsServiceMgr;II)V

    .line 856
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v0, v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mPresenceService:[Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->val$slotId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->setHidlPresenceService(Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;)V

    goto :goto_0

    .line 858
    :cond_0
    if-ne p1, v0, :cond_1

    .line 859
    const-string v0, "ImsRcsServiceMgr"

    const-string v1, " V1.2 IPresenceService status: FAIL "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->val$slotId:I

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$900(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V

    goto :goto_0

    .line 862
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 863
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$10;->val$slotId:I

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->access$1100(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V

    .line 865
    :cond_2
    :goto_0
    return-void
.end method
