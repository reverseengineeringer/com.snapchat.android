.class final Laoz$2;
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
    .line 241
    iput-object p1, p0, Laoz$2;->a:Laoz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Laoz$2;->a:Laoz;

    invoke-static {v0}, Laoz;->a(Laoz;)V

    .line 245
    return-void
.end method
