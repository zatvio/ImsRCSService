.class Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;
.super Ljava/lang/Object;
.source "ImsConfigServiceWrapper.java"

# interfaces
.implements Lvendor/qti/ims/configservice/V1_0/IConfigService$getUceStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getUceStatus(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

.field final synthetic val$caps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 809
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->val$caps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onValues$0$vendor-qti-imsrcs-config-ImsConfigServiceWrapper$1(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 1
    .param p1, "localCaps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 822
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1000(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1000(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;->onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 824
    :cond_0
    return-void
.end method

.method public onValues(ILvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "uceCapabilityInfo"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IConfigService.getUceStatusCallback:  received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    if-nez p1, :cond_1

    .line 816
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1100(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    .line 817
    .local v0, "localCaps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cap from UCE module presence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->val$caps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " options: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->val$caps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->val$caps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v2, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v2

    invoke-virtual {v0, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->val$caps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 819
    invoke-virtual {v2, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v2

    invoke-virtual {v0, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 820
    const-string v2, "calling onUceConfigStatusReceived"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 828
    :cond_0
    const-string v2, "calling setUceStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->val$caps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v2, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v2

    iget-object v3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;->val$caps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v3, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUceStatus(ZZ)V

    .line 832
    .end local v0    # "localCaps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    :cond_1
    :goto_0
    nop

    .line 835
    return-void
.end method
