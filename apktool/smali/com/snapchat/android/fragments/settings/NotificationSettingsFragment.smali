.class public Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private final a:Lakr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;-><init>(Lakr;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lakr;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Lcf;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Lakr;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)Lakr;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Lakr;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    .prologue
    .line 33
    const v2, 0x7f040080

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->mFragmentLayout:Landroid/view/View;

    .line 35
    const v2, 0x7f0a0067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/CheckBox;

    const v2, 0x7f0a02aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const v2, 0x7f0a02ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const v2, 0x7f0a02b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v2, 0x7f0a02b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v2, 0x7f0a02a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v11

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v8

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v10

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v9

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v15

    const v2, 0x7f0a02af

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v12

    const v2, 0x7f0a02ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v14

    const v2, 0x7f0a02b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->c(I)Landroid/view/View;

    move-result-object v13

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v15}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lakr;->bG()Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lakr;->bC()Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lakr;->bD()Z

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lakr;->bF()Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lakr;->bE()Z

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$10;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$11;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v2
.end method
