.class final Lano$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lano;->a(Laje;ZLcom/snapchat/android/rendering/SnapMediaRenderer$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lano;


# direct methods
.method constructor <init>(Lano;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lano$1;->a:Lano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanq;)V
    .locals 5

    .prologue
    .line 186
    invoke-static {}, Lano;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNAP-VIEW: Async loading complete for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lanq;->a()Laje;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lano$1;->a:Lano;

    invoke-static {v0, p1}, Lano;->a(Lano;Lanq;)V

    .line 188
    return-void
.end method
