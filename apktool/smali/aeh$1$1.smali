.class final Laeh$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeh$1;->a(Lcom/snapchat/android/discover/ui/ChannelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeh$1;


# direct methods
.method constructor <init>(Laeh$1;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Laeh$1$1;->a:Laeh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Laeh$1$1;->a:Laeh$1;

    iget-object v0, v0, Laeh$1;->a:Laeh;

    invoke-static {v0}, Laeh;->a(Laeh;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Laeh$1$1;->a:Laeh$1;

    iget-object v0, v0, Laeh$1;->a:Laeh;

    invoke-static {v0}, Laeh;->a(Laeh;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbap;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 115
    return-void
.end method
