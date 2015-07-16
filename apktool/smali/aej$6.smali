.class public final Laej$6;
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
    .line 194
    iput-object p1, p0, Laej$6;->a:Laej;

    invoke-direct {p0, p2}, Laej$c;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Laej$6;->a:Laej;

    invoke-static {v0}, Laej;->b(Laej;)V

    .line 198
    return-void
.end method
