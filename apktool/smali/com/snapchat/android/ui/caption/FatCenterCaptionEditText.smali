.class public Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;
.super Lcom/snapchat/android/ui/caption/FatCaptionEditText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;->setGravity(I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c()V

    .line 21
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;->setGravity(I)V

    .line 22
    return-void
.end method

.method protected getAnalyticsDetails()Laqn;
    .locals 5

    .prologue
    .line 26
    new-instance v1, Laqn;

    sget-object v2, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->FAT_CENTER_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    iget-boolean v3, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;->m:Z

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;->getColorSpans()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;->x:Z

    invoke-direct {v1, v2, v3, v0, v4}, Laqn;-><init>(Lcom/snapchat/android/ui/caption/CaptionTypeEnums;ZZZ)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
