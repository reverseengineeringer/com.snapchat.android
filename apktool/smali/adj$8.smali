.class public final Ladj$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/model/DSnapPage;

.field final synthetic b:Lcom/snapchat/android/discover/model/MediaState;

.field final synthetic c:Ladj;


# direct methods
.method public constructor <init>(Ladj;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Ladj$8;->c:Ladj;

    iput-object p2, p0, Ladj$8;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    iput-object p3, p0, Ladj$8;->b:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Ladj$8;->c:Ladj;

    invoke-static {v0}, Ladj;->c(Ladj;)Ladd;

    move-result-object v0

    iget-object v1, p0, Ladj$8;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, p0, Ladj$8;->b:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v1, v2}, Ladd;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    .line 390
    iget-object v0, p0, Ladj$8;->c:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    .line 391
    return-void
.end method
