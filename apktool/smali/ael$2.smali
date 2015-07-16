.class final Lael$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lael;->a(Ljava/lang/String;Lael$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lael$c;

.field final synthetic b:Lael;


# direct methods
.method constructor <init>(Lael;Lael$c;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lael$2;->b:Lael;

    iput-object p2, p0, Lael$2;->a:Lael$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lael$2;->a:Lael$c;

    iget-object v0, v0, Lael$c;->e:Lael$a;

    iget-object v1, p0, Lael$2;->a:Lael$c;

    iget-object v1, v1, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v2, p0, Lael$2;->a:Lael$c;

    iget-object v2, v2, Lael$c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lael$a;->a(Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;Ljava/lang/String;)V

    .line 356
    return-void
.end method
