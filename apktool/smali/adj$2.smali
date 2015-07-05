.class final Ladj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladj;


# direct methods
.method constructor <init>(Ladj;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Ladj$2;->a:Ladj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Ladj$2;->a:Ladj;

    invoke-static {v0}, Ladj;->i(Ladj;)Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    iget-object v0, p0, Ladj$2;->a:Ladj;

    invoke-static {v0}, Ladj;->d(Ladj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    .line 623
    return-void
.end method
