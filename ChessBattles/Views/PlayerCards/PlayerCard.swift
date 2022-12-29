//
//  PlayerCard.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-04.
//

import SwiftUI

struct PlayerCard: View {
    
    var countries = ["Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burundi","Côte d'Ivoire","Cabo Verde","Cambodia","Cameroon","Canada","CAR","Chad","Chile","China","Colombia","Comoros","Congo","Costa Rica","Croatia","Cuba","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","DPRK","DRC","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Eswatini","Ethiopia","Fiji","Finland","France","Gabon","Gambia","Georgia","Germany","Ghana","Greece","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Holy See","Honduras","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","North Macedonia","Norway","Oman","Pakistan","Palau","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","St. Vincent Grenadines","State of Palestine","Sudan","Suriname","Sweden","Switzerland","Syria","Tajikistan","Tanzania","Thailand","Timor-Leste","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","U.A.E.","U.K.","U.S.","Uganda","Ukraine","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe",]
    
    var flags = ["https://www.worldometers.info/img/flags/small/tn_af-flag.gif","https://www.worldometers.info/img/flags/small/tn_al-flag.gif","https://www.worldometers.info/img/flags/small/tn_ag-flag.gif","https://www.worldometers.info/img/flags/small/tn_an-flag.gif","https://www.worldometers.info/img/flags/small/tn_ao-flag.gif","https://www.worldometers.info/img/flags/small/tn_ac-flag.gif","https://www.worldometers.info/img/flags/small/tn_ar-flag.gif","https://www.worldometers.info/img/flags/small/tn_am-flag.gif","https://www.worldometers.info/img/flags/small/tn_as-flag.gif","https://www.worldometers.info/img/flags/small/tn_au-flag.gif","https://www.worldometers.info/img/flags/small/tn_aj-flag.gif","https://www.worldometers.info/img/flags/small/tn_bf-flag.gif","https://www.worldometers.info/img/flags/small/tn_ba-flag.gif","https://www.worldometers.info/img/flags/small/tn_bg-flag.gif","https://www.worldometers.info/img/flags/small/tn_bb-flag.gif","https://www.worldometers.info/img/flags/small/tn_bo-flag.gif","https://www.worldometers.info/img/flags/small/tn_be-flag.gif","https://www.worldometers.info/img/flags/small/tn_bh-flag.gif","https://www.worldometers.info/img/flags/small/tn_bn-flag.gif","https://www.worldometers.info/img/flags/small/tn_bt-flag.gif","https://www.worldometers.info/img/flags/small/tn_bl-flag.gif","https://www.worldometers.info/img/flags/small/tn_bk-flag.gif","https://www.worldometers.info/img/flags/small/tn_bc-flag.gif","https://www.worldometers.info/img/flags/small/tn_br-flag.gif","https://www.worldometers.info/img/flags/small/tn_bx-flag.gif","https://www.worldometers.info/img/flags/small/tn_bu-flag.gif","https://www.worldometers.info/img/flags/small/tn_uv-flag.gif","https://www.worldometers.info/img/flags/small/tn_by-flag.gif","https://www.worldometers.info/img/flags/small/tn_iv-flag.gif","https://www.worldometers.info/img/flags/small/tn_cv-flag.gif","https://www.worldometers.info/img/flags/small/tn_cb-flag.gif","https://www.worldometers.info/img/flags/small/tn_cm-flag.gif","https://www.worldometers.info/img/flags/small/tn_ca-flag.gif","https://www.worldometers.info/img/flags/small/tn_ct-flag.gif","https://www.worldometers.info/img/flags/small/tn_cd-flag.gif","https://www.worldometers.info/img/flags/small/tn_ci-flag.gif","https://www.worldometers.info/img/flags/small/tn_ch-flag.gif","https://www.worldometers.info/img/flags/small/tn_co-flag.gif","https://www.worldometers.info/img/flags/small/tn_cn-flag.gif","https://www.worldometers.info/img/flags/small/tn_cg-flag.gif","https://www.worldometers.info/img/flags/small/tn_cs-flag.gif","https://www.worldometers.info/img/flags/small/tn_hr-flag.gif","https://www.worldometers.info/img/flags/small/tn_cu-flag.gif","https://www.worldometers.info/img/flags/small/tn_cy-flag.gif","https://www.worldometers.info/img/flags/small/tn_ez-flag.gif","https://www.worldometers.info/img/flags/small/tn_da-flag.gif","https://www.worldometers.info/img/flags/small/tn_dj-flag.gif","https://www.worldometers.info/img/flags/small/tn_do-flag.gif","https://www.worldometers.info/img/flags/small/tn_dr-flag.gif","https://www.worldometers.info/img/flags/small/tn_kn-flag.gif","https://www.worldometers.info/img/flags/small/tn_congo-flag.gif","https://www.worldometers.info/img/flags/small/tn_ec-flag.gif","https://www.worldometers.info/img/flags/small/tn_eg-flag.gif","https://www.worldometers.info/img/flags/small/tn_es-flag.gif","https://www.worldometers.info/img/flags/small/tn_ek-flag.gif","https://www.worldometers.info/img/flags/small/tn_er-flag.gif","https://www.worldometers.info/img/flags/small/tn_en-flag.gif","https://www.worldometers.info/img/flags/small/tn_wz-flag.gif","https://www.worldometers.info/img/flags/small/tn_et-flag.gif","https://www.worldometers.info/img/flags/small/tn_fj-flag.gif","https://www.worldometers.info/img/flags/small/tn_fi-flag.gif","https://www.worldometers.info/img/flags/small/tn_fr-flag.gif","https://www.worldometers.info/img/flags/small/tn_gb-flag.gif","https://www.worldometers.info/img/flags/small/tn_ga-flag.gif","https://www.worldometers.info/img/flags/small/tn_gg-flag.gif","https://www.worldometers.info/img/flags/small/tn_gm-flag.gif","https://www.worldometers.info/img/flags/small/tn_gh-flag.gif","https://www.worldometers.info/img/flags/small/tn_gr-flag.gif","https://www.worldometers.info/img/flags/small/tn_gj-flag.gif","https://www.worldometers.info/img/flags/small/tn_gt-flag.gif","https://www.worldometers.info/img/flags/small/tn_gv-flag.gif","https://www.worldometers.info/img/flags/small/tn_pu-flag.gif","https://www.worldometers.info/img/flags/small/tn_gy-flag.gif","https://www.worldometers.info/img/flags/small/tn_ha-flag.gif","https://www.worldometers.info/img/flags/small/tn_vt-flag.gif","https://www.worldometers.info/img/flags/small/tn_ho-flag.gif","https://www.worldometers.info/img/flags/small/tn_hu-flag.gif","https://www.worldometers.info/img/flags/small/tn_ic-flag.gif","https://www.worldometers.info/img/flags/small/tn_in-flag.gif","https://www.worldometers.info/img/flags/small/tn_id-flag.gif","https://www.worldometers.info/img/flags/small/tn_ir-flag.gif","https://www.worldometers.info/img/flags/small/tn_iz-flag.gif","https://www.worldometers.info/img/flags/small/tn_ei-flag.gif","https://www.worldometers.info/img/flags/small/tn_is-flag.gif","https://www.worldometers.info/img/flags/small/tn_it-flag.gif","https://www.worldometers.info/img/flags/small/tn_jm-flag.gif","https://www.worldometers.info/img/flags/small/tn_ja-flag.gif","https://www.worldometers.info/img/flags/small/tn_jo-flag.gif","https://www.worldometers.info/img/flags/small/tn_kz-flag.gif","https://www.worldometers.info/img/flags/small/tn_ke-flag.gif","https://www.worldometers.info/img/flags/small/tn_kr-flag.gif","https://www.worldometers.info/img/flags/small/tn_ku-flag.gif","https://www.worldometers.info/img/flags/small/tn_kg-flag.gif","https://www.worldometers.info/img/flags/small/tn_la-flag.gif","https://www.worldometers.info/img/flags/small/tn_lg-flag.gif","https://www.worldometers.info/img/flags/small/tn_le-flag.gif","https://www.worldometers.info/img/flags/small/tn_lt-flag.gif","https://www.worldometers.info/img/flags/small/tn_li-flag.gif","https://www.worldometers.info/img/flags/small/tn_ly-flag.gif","https://www.worldometers.info/img/flags/small/tn_ls-flag.gif","https://www.worldometers.info/img/flags/small/tn_lh-flag.gif","https://www.worldometers.info/img/flags/small/tn_lu-flag.gif","https://www.worldometers.info/img/flags/small/tn_ma-flag.gif","https://www.worldometers.info/img/flags/small/tn_mi-flag.gif","https://www.worldometers.info/img/flags/small/tn_my-flag.gif","https://www.worldometers.info/img/flags/small/tn_mv-flag.gif","https://www.worldometers.info/img/flags/small/tn_ml-flag.gif","https://www.worldometers.info/img/flags/small/tn_mt-flag.gif","https://www.worldometers.info/img/flags/small/tn_rm-flag.gif","https://www.worldometers.info/img/flags/small/tn_mr-flag.gif","https://www.worldometers.info/img/flags/small/tn_mp-flag.gif","https://www.worldometers.info/img/flags/small/tn_mx-flag.gif","https://www.worldometers.info/img/flags/small/tn_fm-flag.gif","https://www.worldometers.info/img/flags/small/tn_md-flag.gif","https://www.worldometers.info/img/flags/small/tn_mn-flag.gif","https://www.worldometers.info/img/flags/small/tn_mg-flag.gif","https://www.worldometers.info/img/flags/small/tn_mj-flag.gif","https://www.worldometers.info/img/flags/small/tn_mo-flag.gif","https://www.worldometers.info/img/flags/small/tn_mz-flag.gif","https://www.worldometers.info/img/flags/small/tn_bm-flag.gif","https://www.worldometers.info/img/flags/small/tn_wa-flag.gif","https://www.worldometers.info/img/flags/small/tn_nr-flag.gif","https://www.worldometers.info/img/flags/small/tn_np-flag.gif","https://www.worldometers.info/img/flags/small/tn_nl-flag.gif","https://www.worldometers.info/img/flags/small/tn_nz-flag.gif","https://www.worldometers.info/img/flags/small/tn_nu-flag.gif","https://www.worldometers.info/img/flags/small/tn_ng-flag.gif","https://www.worldometers.info/img/flags/small/tn_ni-flag.gif","https://www.worldometers.info/img/flags/small/tn_mk-flag.gif","https://www.worldometers.info/img/flags/small/tn_no-flag.gif","https://www.worldometers.info/img/flags/small/tn_mu-flag.gif","https://www.worldometers.info/img/flags/small/tn_pk-flag.gif","https://www.worldometers.info/img/flags/small/tn_ps-flag.gif","https://www.worldometers.info/img/flags/small/tn_pm-flag.gif","https://www.worldometers.info/img/flags/small/tn_pp-flag.gif","https://www.worldometers.info/img/flags/small/tn_pa-flag.gif","https://www.worldometers.info/img/flags/small/tn_pe-flag.gif","https://www.worldometers.info/img/flags/small/tn_rp-flag.gif","https://www.worldometers.info/img/flags/small/tn_pl-flag.gif","https://www.worldometers.info/img/flags/small/tn_po-flag.gif","https://www.worldometers.info/img/flags/small/tn_qa-flag.gif","https://www.worldometers.info/img/flags/small/tn_ro-flag.gif","https://www.worldometers.info/img/flags/small/tn_rs-flag.gif","https://www.worldometers.info/img/flags/small/tn_rw-flag.gif","https://www.worldometers.info/img/flags/small/tn_sc-flag.gif","https://www.worldometers.info/img/flags/small/tn_st-flag.gif","https://www.worldometers.info/img/flags/small/tn_ws-flag.gif","https://www.worldometers.info/img/flags/small/tn_sm-flag.gif","https://www.worldometers.info/img/flags/small/tn_tp-flag.gif","https://www.worldometers.info/img/flags/small/tn_sa-flag.gif","https://www.worldometers.info/img/flags/small/tn_sg-flag.gif","https://www.worldometers.info/img/flags/small/tn_ri-flag.gif","https://www.worldometers.info/img/flags/small/tn_se-flag.gif","https://www.worldometers.info/img/flags/small/tn_sl-flag.gif","https://www.worldometers.info/img/flags/small/tn_sn-flag.gif","https://www.worldometers.info/img/flags/small/tn_lo-flag.gif","https://www.worldometers.info/img/flags/small/tn_si-flag.gif","https://www.worldometers.info/img/flags/small/tn_bp-flag.gif","https://www.worldometers.info/img/flags/small/tn_so-flag.gif","https://www.worldometers.info/img/flags/small/tn_sf-flag.gif","https://www.worldometers.info/img/flags/small/tn_ks-flag.gif","https://www.worldometers.info/img/flags/small/tn_od-flag.gif","https://www.worldometers.info/img/flags/small/tn_sp-flag.gif","https://www.worldometers.info/img/flags/small/tn_ce-flag.gif","https://www.worldometers.info/img/flags/small/tn_vc-flag.gif","https://www.worldometers.info/img/flags/small/tn_palestine-flag.gif","https://www.worldometers.info/img/flags/small/tn_su-flag.gif","https://www.worldometers.info/img/flags/small/tn_ns-flag.gif","https://www.worldometers.info/img/flags/small/tn_sw-flag.gif","https://www.worldometers.info/img/flags/small/tn_sz-flag.gif","https://www.worldometers.info/img/flags/small/tn_sy-flag.gif","https://www.worldometers.info/img/flags/small/tn_ti-flag.gif","https://www.worldometers.info/img/flags/small/tn_tz-flag.gif","https://www.worldometers.info/img/flags/small/tn_th-flag.gif","https://www.worldometers.info/img/flags/small/tn_tt-flag.gif","https://www.worldometers.info/img/flags/small/tn_to-flag.gif","https://www.worldometers.info/img/flags/small/tn_tn-flag.gif","https://www.worldometers.info/img/flags/small/tn_td-flag.gif","https://www.worldometers.info/img/flags/small/tn_ts-flag.gif","https://www.worldometers.info/img/flags/small/tn_tu-flag.gif","https://www.worldometers.info/img/flags/small/tn_tx-flag.gif","https://www.worldometers.info/img/flags/small/tn_tv-flag.gif","https://www.worldometers.info/img/flags/small/tn_ae-flag.gif","https://www.worldometers.info/img/flags/small/tn_uk-flag.gif","https://www.worldometers.info/img/flags/small/tn_us-flag.gif","https://www.worldometers.info/img/flags/small/tn_ug-flag.gif","https://www.worldometers.info/img/flags/small/tn_up-flag.gif","https://www.worldometers.info/img/flags/small/tn_uy-flag.gif","https://www.worldometers.info/img/flags/small/tn_uz-flag.gif","https://www.worldometers.info/img/flags/small/tn_nh-flag.gif","https://www.worldometers.info/img/flags/small/tn_ve-flag.gif","https://www.worldometers.info/img/flags/small/tn_vm-flag.gif","https://www.worldometers.info/img/flags/small/tn_ym-flag.gif","https://www.worldometers.info/img/flags/small/tn_za-flag.gif","https://www.worldometers.info/img/flags/small/tn_zi-flag.gif"]
    
    var rank:Int=0
    var name:String=""
    var country:String=""
    var flag:String=""
    var elo:String=""
    var birthYear:String=""
    var profile:String=""
    
    var body: some View {
        ZStack{
            VStack(alignment: .center){
                
                HStack{
                    
                    Text("#\(rank),")
                        .frame(width: 30)
                        .font(.footnote)
                    Text(name)
                        .font(.subheadline)
                        .frame(width: 100, height: 60)
                        .scaledToFit()
                }
                Divider()
                    .frame(width: 100)
                HStack{
                    
                    //flag
                    if let index:Int = countries.firstIndex(of: country) {
                            AsyncImage(url: URL(string: (flags[index]))!)
                            .padding(-36)
                                .scaleEffect(0.25)
                    }
                    
                    Text("\(country),")
                }
                
                Divider()
                    .frame(width: 100)
                
                HStack{
                    VStack{
                        Text("Rating: \(elo)")
                        Text("\(2022 - Int(birthYear)!) years old")
                    }
                    
                }
                Divider()
                    .frame(width: 100)
                
                HStack{
                    Link("Fide Profile", destination: URL(string: profile)!)

                }
            }
        }
        .frame(width: 140,height: 185)
        .padding(20)
        .border(Color(.black))
        .scaleEffect(1)
        
    }
}

struct PlayerCard_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCard(rank:1,
                   name:"Carlsen, Magnus",
                   country:"Norway",
                   flag:"https://ratings.fide.com/svg/NOR.svg",
                   elo:"2859",
                   birthYear:"1990",
                   profile:"https://amazon.com")
    }
}
