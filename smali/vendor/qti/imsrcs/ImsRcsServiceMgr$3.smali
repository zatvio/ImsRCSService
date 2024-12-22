.class Lvendor/qti/imsrcs/ImsRcsServiceMgr$3;
.super Ljava/lang/Object;
.source "ImsRcsServiceMgr.java"

# interfaces
.implements Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getConfigService(I)Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
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

    .line 231
    iput-object p1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$3;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iput p2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$3;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/ims/configservice/V1_0/IConfigService;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "iImsConfigService"    # Lvendor/qti/ims/configservice/V1_0/IConfigService;

    .line 234
    const-string v0, "ImsRcsServiceMgr V1.0 IConfigService status: "

    invoke-static {p1}, Lvendor/qti/ims/factory/V2_0/IImsFactory$StatusCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez p1, :cond_0

    .line 236
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$3;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v0, v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$3;->val$slotId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setHidlConfigService_1_0(Lvendor/qti/ims/configservice/V1_0/IConfigService;)V

    .line 241
    :cond_0
    return-void
.end method
