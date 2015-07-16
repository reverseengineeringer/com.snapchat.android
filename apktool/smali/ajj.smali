.class public final Lajj;
.super Laka;
.source "SourceFile"


# instance fields
.field public mActionText:Ljava/lang/String;

.field public mActionUrl:Ljava/lang/String;

.field private mHideTimer:Z

.field public mMediaUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Laka;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 20

    .prologue
    .line 24
    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    move-object/from16 v18, p17

    invoke-direct/range {v2 .. v18}, Laka;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZLjava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lazy;->a(Lajj;)V

    .line 27
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lajj;->mMediaUrl:Ljava/lang/String;

    .line 28
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lajj;->mActionText:Ljava/lang/String;

    .line 29
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lajj;->mActionUrl:Ljava/lang/String;

    .line 30
    move/from16 v0, p16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lajj;->mHideTimer:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 0

    .prologue
    .line 88
    return p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lajj;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajj;->mActionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lajj;->mActionText:Ljava/lang/String;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Laka;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lajj;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajj;->mActionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lajj;->mActionText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Laka;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lajj;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajj;->mActionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Laka;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lajj;->mHideTimer:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Laka;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lajj;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lajj;->mActionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z_()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lajj;->o()V

    .line 63
    return-void
.end method
