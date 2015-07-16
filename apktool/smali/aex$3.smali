.class final Laex$3;
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
    .line 361
    iput-object p1, p0, Laex$3;->a:Laex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lawm;Lawv;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 364
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laex$3;->a:Laex;

    iget-object v2, v2, Laex;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v2, v0, v1

    .line 365
    iget-object v0, p0, Laex$3;->a:Laex;

    iput-boolean v3, v0, Laex;->b:Z

    .line 366
    iget-object v0, p0, Laex$3;->a:Laex;

    invoke-static {v0}, Laex;->a(Laex;)V

    .line 367
    return-void
.end method
