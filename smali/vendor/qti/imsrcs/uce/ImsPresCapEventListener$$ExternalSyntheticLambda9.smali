.class public final synthetic Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda9;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda9;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->lambda$handlePresenceServiceDied$9$vendor-qti-imsrcs-uce-ImsPresCapEventListener()V

    return-void
.end method
