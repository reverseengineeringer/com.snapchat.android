.class final Laex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laww;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laex;


# direct methods
.method constructor <init>(Laex;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Laex$2;->a:Laex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lawm;Lawv;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 355
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laex$2;->a:Laex;

    iget-object v2, v2, Laex;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v2, v0, v1

    .line 356
    iget-object v0, p0, Laex$2;->a:Laex;

    iput-boolean v3, v0, Laex;->c:Z

    .line 357
    iget-object v0, p0, Laex$2;->a:Laex;

    invoke-static {v0}, Laex;->a(Laex;)V

    .line 358
    return-void
.end method
