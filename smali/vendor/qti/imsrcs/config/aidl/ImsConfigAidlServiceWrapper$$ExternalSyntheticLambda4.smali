.class public final synthetic Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda4;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$$ExternalSyntheticLambda4;->f$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->lambda$notifyUserAgentStatusToSipTransport$2$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper()V

    return-void
.end method
