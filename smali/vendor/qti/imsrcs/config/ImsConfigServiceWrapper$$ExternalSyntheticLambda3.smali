.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->lambda$notifyUserAgentStatusToSipTransport$4$vendor-qti-imsrcs-config-ImsConfigServiceWrapper()V

    return-void
.end method
