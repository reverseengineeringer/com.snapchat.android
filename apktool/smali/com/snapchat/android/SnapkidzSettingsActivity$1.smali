.class final Lcom/snapchat/android/SnapkidzSettingsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapkidzSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapkidzSettingsActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$1;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$1;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->finish()V

    .line 27
    return-void
.end method
