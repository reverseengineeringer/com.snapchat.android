.class public final Laej$1;
.super Laej$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laej;


# direct methods
.method public constructor <init>(Laej;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Laej$1;->a:Laej;

    invoke-direct {p0, p2}, Laej$c;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Laej$1;->a:Laej;

    invoke-static {v0}, Laej;->a(Laej;)V

    .line 190
    return-void
.end method
