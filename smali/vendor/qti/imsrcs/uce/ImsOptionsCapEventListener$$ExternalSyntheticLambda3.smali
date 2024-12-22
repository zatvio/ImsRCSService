.class public final synthetic Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iput p2, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->lambda$handleServiceStatus$0$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(I)V

    return-void
.end method
