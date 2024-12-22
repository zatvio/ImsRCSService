.class Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$1;
.super Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;
.source "ImsRcsFeatureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    .line 64
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$1;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 2
    .param p1, "caps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 67
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$1;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->access$000(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUceConfigStatusReceived :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$1;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    invoke-static {v0, p1}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->access$100(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 69
    return-void
.end method
