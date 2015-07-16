.class public final Laps$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laps;


# direct methods
.method public constructor <init>(Laps;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Laps$2;->a:Laps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 1

    .prologue
    .line 57
    if-nez p3, :cond_0

    .line 58
    iget-object v0, p0, Laps$2;->a:Laps;

    iget-object v0, v0, Laps;->d:Laen;

    invoke-virtual {v0}, Laen;->a()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Laps$2;->a:Laps;

    iget-object v0, v0, Laps;->d:Laen;

    invoke-virtual {v0}, Laen;->b()V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Laps$2;->a:Laps;

    iget-object v0, v0, Laps;->d:Laen;

    invoke-virtual {v0}, Laen;->a()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Laps$2;->a:Laps;

    iget-object v0, v0, Laps;->d:Laen;

    invoke-virtual {v0}, Laen;->b()V

    goto :goto_0
.end method
