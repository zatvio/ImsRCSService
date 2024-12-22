.class Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;
.super Ljava/lang/Object;
.source "ImsRcsServiceMgr.java"

# interfaces
.implements Lvendor/qti/ims/factory/V2_1/IImsFactory$createConfigService_1_1Callback;


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

.field final synthetic val$hidl_config_cb:Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;ILvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iput p2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$slotId:I

    iput-object p3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$hidl_config_cb:Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/ims/configservice/V1_1/IConfigService;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "iImsConfigService"    # Lvendor/qti/ims/configservice/V1_1/IConfigService;

    .line 193
    const-string v0, "ImsRcsServiceMgr V1.1 IConfigService status: "

    invoke-static {p1}, Lvendor/qti/ims/factory/V2_0/IImsFactory$StatusCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-nez p1, :cond_0

    .line 195
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v0, v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$slotId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setHidlConfigService(Lvendor/qti/ims/configservice/V1_1/IConfigService;)V

    goto :goto_1

    .line 197
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 200
    :try_start_0
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    if-eqz v0, :cond_1

    .line 201
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance:Lvendor/qti/ims/factory/V2_2/IImsFactory;

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$slotId:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v2, v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$slotId:I

    aget-object v2, v2, v3

    .line 202
    invoke-virtual {v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->gethidlConfigListener()Lvendor/qti/ims/configservice/V1_1/IConfigServiceListener;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$hidl_config_cb:Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;

    .line 201
    invoke-interface {v0, v1, v2, v3}, Lvendor/qti/ims/factory/V2_2/IImsFactory;->createConfigService(ILvendor/qti/ims/configservice/V1_0/IConfigServiceListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;)V

    goto :goto_0

    .line 203
    :cond_1
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    if-eqz v0, :cond_2

    .line 204
    sget-object v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mImsFactoryInstance_2_1:Lvendor/qti/ims/factory/V2_1/IImsFactory;

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$slotId:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v2, v2, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mConfigService:[Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$slotId:I

    aget-object v2, v2, v3

    .line 205
    invoke-virtual {v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->gethidlConfigListener()Lvendor/qti/ims/configservice/V1_1/IConfigServiceListener;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$2;->val$hidl_config_cb:Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;

    .line 204
    invoke-interface {v0, v1, v2, v3}, Lvendor/qti/ims/factory/V2_1/IImsFactory;->createConfigService(ILvendor/qti/ims/configservice/V1_0/IConfigServiceListener;Lvendor/qti/ims/factory/V2_0/IImsFactory$createConfigServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_2
    :goto_0
    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImsRcsServiceMgr"

    const-string v2, "Unable to get to IConfigService instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method
