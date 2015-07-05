.class final Laoz$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoz;


# direct methods
.method constructor <init>(Laoz;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Laoz$3;->a:Laoz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Laoz$3;->a:Laoz;

    invoke-static {v0}, Laoz;->b(Laoz;)V

    .line 252
    return-void
.end method
