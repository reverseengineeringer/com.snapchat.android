.class public final Lanm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanh;


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Landroid/content/ContentValues;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lanm;->a:Landroid/content/Intent;

    .line 24
    iget-object v0, p0, Lanm;->a:Landroid/content/Intent;

    const-string v1, "content_values"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lanm;->b:Landroid/content/ContentValues;

    .line 25
    iget-object v0, p0, Lanm;->a:Landroid/content/Intent;

    const-string v1, "clear"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lanm;->c:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lanm;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lanm;->c:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1}, Labp;->b(Landroid/content/Context;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lanm;->b:Landroid/content/ContentValues;

    invoke-static {p1, v0}, Labp;->a(Landroid/content/Context;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
