.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

.field public final synthetic f$1:Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda4;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda4;->f$1:Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda4;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda4;->f$1:Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->lambda$notifyUceStatus$1$vendor-qti-imsrcs-config-ImsConfigServiceWrapper(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V

    return-void
.end method
