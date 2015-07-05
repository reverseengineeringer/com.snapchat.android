.class final Ladl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladl;->a(Ljava/lang/String;Ladl$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladl$c;

.field final synthetic b:Ladl;


# direct methods
.method constructor <init>(Ladl;Ladl$c;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Ladl$2;->b:Ladl;

    iput-object p2, p0, Ladl$2;->a:Ladl$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Ladl$2;->a:Ladl$c;

    iget-object v0, v0, Ladl$c;->e:Ladl$a;

    iget-object v1, p0, Ladl$2;->a:Ladl$c;

    iget-object v1, v1, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v2, p0, Ladl$2;->a:Ladl$c;

    iget-object v2, v2, Ladl$c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ladl$a;->a(Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;Ljava/lang/String;)V

    .line 356
    return-void
.end method
