.class public final synthetic Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

.field public final synthetic f$1:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda2;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda2;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->lambda$getUceStatus$3$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    return-void
.end method
