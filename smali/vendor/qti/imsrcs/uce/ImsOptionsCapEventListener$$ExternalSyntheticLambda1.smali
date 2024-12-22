.class public final synthetic Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda1;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda1;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->lambda$handleOptionsServiceDied$1$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener()V

    return-void
.end method
